#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

console.log('🚀 Starting Drupal Libraries sync from NPM packages to Drupal libraries...');
console.log('📋 This script copies files from node_modules/ to docroot/libraries/ as configured in package.json');

// Read package.json
const pkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
const drupalLibs = pkg['drupal-libraries'];

if (!drupalLibs || !drupalLibs.libraries) {
  console.error('❌ No drupal-libraries configuration found in package.json.');
  process.exit(1);
}

// Determine target directory with fallback support
const configuredTarget = drupalLibs['library-directory'];
const fallbackTargets = ['docroot/libraries', 'web/libraries', 'public_html/libraries', 'www/libraries', 'htdocs/libraries', 'html/libraries', 'sites/all/libraries', 'libraries'];

let baseTarget = configuredTarget || fallbackTargets[0];

// If configured target is specified, use it; otherwise check for existing directories
if (!configuredTarget) {
  console.log('📁 No library-directory specified, checking for existing directories...');
  
  for (const target of fallbackTargets) {
    const parentDir = path.dirname(target);
    if (fs.existsSync(parentDir)) {
      baseTarget = target;
      console.log(`✅ Found existing parent directory: ${parentDir}, using ${target}`);
      break;
    }
  }
} else {
  console.log(`📁 Using configured library directory: ${baseTarget}`);
}

// Ensure directory exists
console.log(`📂 Creating target directory: ${baseTarget}`);
fs.mkdirSync(baseTarget, { recursive: true });

console.log(`\n📦 Syncing ${drupalLibs.libraries.length} NPM packages to Drupal libraries...`);

let successCount = 0;
let errorCount = 0;

drupalLibs.libraries.forEach((lib, index) => {
  const src = path.join('node_modules', lib.package);
  const dest = path.join(baseTarget, lib.name);
  
  console.log(`\n[${index + 1}/${drupalLibs.libraries.length}] Syncing library: ${lib.name}`);
  console.log(`  📥 Source: ${src}`);
  console.log(`  📤 Destination: ${dest}`);

  if (!fs.existsSync(src)) {
    console.error(`  ❌ Source not found: ${src}`);
    errorCount++;
    return;
  }

  // Remove old destination if exists
  if (fs.existsSync(dest)) {
    console.log(`  🗑️  Removing existing destination...`);
    try {
      fs.rmSync(dest, { recursive: true, force: true });
    } catch (removeError) {
      if (removeError.code === 'EACCES' || removeError.code === 'EPERM') {
        console.log(`  ⚠️  Permission denied. You may need to run with sudo or fix directory permissions.`);
        console.log(`  💡 Try: sudo chown -R $USER:$USER ${baseTarget}`);
        console.log(`  🔄 Skipping removal and attempting copy over existing files...`);
        // Don't return here, let it try to copy over existing files
      } else {
        console.error(`  ❌ Failed to remove existing destination: ${removeError.message}`);
        errorCount++;
        return;
      }
    }
  }

  try {
    // Recursive copy
    copyRecursiveSync(src, dest);
    console.log(`  ✅ Successfully synced NPM package '${lib.package}' to Drupal library '${lib.name}'`);
    successCount++;
  } catch (error) {
    console.error(`  ❌ Failed to sync NPM package '${lib.package}': ${error.message}`);
    errorCount++;
  }
});

console.log(`\n🎉 Drupal Libraries sync complete!`);
console.log(`📊 Summary: ${successCount} successful, ${errorCount} errors`);
console.log(`📍 Target directory: ${baseTarget}`);

if (errorCount > 0) {
  console.log(`\n⚠️  ${errorCount} libraries failed to sync. Check the errors above.`);
  process.exit(1);
}

function copyRecursiveSync(src, dest) {
  const stats = fs.statSync(src);
  if (stats.isDirectory()) {
    fs.mkdirSync(dest, { recursive: true });
    fs.readdirSync(src).forEach(child =>
      copyRecursiveSync(path.join(src, child), path.join(dest, child))
    );
  } else {
    fs.copyFileSync(src, dest);
  }
}
