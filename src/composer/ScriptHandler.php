<?php

namespace Varbase\composer;

use Composer\Semver\Comparator;
use Symfony\Component\Filesystem\Filesystem;
use Composer\EventDispatcher\Event;
use DrupalFinder\DrupalFinder;

/**
 * Varbase Composer Script Handler.
 */
class ScriptHandler {

  /**
   * Get the Drupal root directory.
   *
   * @param string $project_root
   *   Project root.
   *
   * @return string
   *   Drupal root path.
   */
  protected static function getDrupalRoot($project_root) {
    $fs = new Filesystem();
    $drupalFinder = new DrupalFinder();
    $drupalFinder->locateRoot(getcwd());
    $drupalRoot = $drupalFinder->getDrupalRoot();
    if (!$fs->exists($drupalRoot . '/core')) {
      return $project_root . '/docroot';
    }
    else {
      return $drupalRoot;
    }
  }

  /**
   * Create required files.
   *
   * @param \Composer\EventDispatcher\Event $event
   *   Event of create required files.
   */
  public static function createRequiredFiles(Event $event) {

    $fs = new Filesystem();
    $drupal_root = static::getDrupalRoot(getcwd());

    $dirs = [
      'modules',
      'profiles',
      'themes',
      'libraries',
    ];

    // Required for unit testing.
    foreach ($dirs as $dir) {
      if (!$fs->exists($drupal_root . '/' . $dir)) {
        $fs->mkdir($drupal_root . '/' . $dir);
        $fs->touch($drupal_root . '/' . $dir . '/.gitkeep');
      }
    }
    // Prepare the settings file for installation.
    if (!$fs->exists($drupal_root . '/sites/default/settings.php') and $fs->exists($drupal_root . '/sites/default/default.settings.php')) {
      $fs->copy($drupal_root . '/sites/default/default.settings.php', $drupal_root . '/sites/default/settings.php');
      $fs->chmod($drupal_root . '/sites/default/settings.php', 0666);
      $event->getIO()
        ->write("Create a sites/default/settings.php file with chmod 0666");
    }
    // Prepare the services file for installation.
    if (!$fs->exists($drupal_root . '/sites/default/services.yml') and $fs->exists($drupal_root . '/sites/default/default.services.yml')) {
      $fs->copy($drupal_root . '/sites/default/default.services.yml', $drupal_root . '/sites/default/services.yml');
      $fs->chmod($drupal_root . '/sites/default/services.yml', 0666);
      $event->getIO()
        ->write("Create a sites/default/services.yml file with chmod 0666");
    }
    // Create the files directory with chmod 0777.
    if (!$fs->exists($drupal_root . '/sites/default/files')) {
      $oldmask = umask(0);
      $fs->mkdir($drupal_root . '/sites/default/files', 0777);
      umask($oldmask);
      $event->getIO()
        ->write("Create a sites/default/files directory with chmod 0777");
    }
  }

  /**
   * Checks if the installed version of Composer is compatible.
   *
   * Composer 1.0.0 and higher consider a `composer install` without having a
   * lock file present as equal to `composer update`. We do not ship with a lock
   * file to avoid merge conflicts downstream, meaning that if a project is
   * installed with an older version of Composer the scaffolding of Drupal will
   * not be triggered. We check this here instead of in drupal-scaffold to be
   * able to give immediate feedback to the end user, rather than failing the
   * installation after going through the lengthy process of compiling and
   * downloading the Composer dependencies.
   *
   * @see https://github.com/composer/composer/pull/5035
   */
  public static function checkComposerVersion(Event $event) {
    $composer = $event->getComposer();
    $io = $event->getIO();
    $version = $composer::VERSION;
    // The dev-channel of composer uses the git revision as version number,
    // try to the branch alias instead.
    if (preg_match('/^[0-9a-f]{40}$/i', $version)) {
      $version = $composer::BRANCH_ALIAS_VERSION;
    }
    // If Composer is installed through git we have no easy way to determine if
    // it is new enough, just display a warning.
    if ($version === '@package_version@' || $version === '@package_branch_alias_version@') {
      $io->writeError('<warning>You are running a development version of Composer. If you experience problems, please update Composer to the latest stable version.</warning>');
    }
    elseif (Comparator::lessThan($version, '1.0.0')) {
      $io->writeError('<error>Drupal-project requires Composer version 1.0.0 or higher. Please update your Composer before continuing</error>.');
      exit(1);
    }
  }

  /**
   * Remove .git folder from modules, themes, profiles of development branches.
   */
  public static function removeGitDirectories() {
    $drupal_root = static::getDrupalRoot(getcwd());

    if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
      self::removeWindowsGitDirectories($drupal_root);
    }
    else {
      exec("find " . $drupal_root . " -name '.git' | xargs rm -rf");
    }
  }

  /**
   * Post Drupal Scaffold Procedure.
   *
   * @param \Composer\EventDispatcher\Event $event
   *   The script event.
   */
  public static function postDrupalScaffoldProcedure(Event $event) {

    $fs = new Filesystem();
    $drupal_root = static::getDrupalRoot(getcwd());

    if ($fs->exists($drupal_root . '/profiles/varbase/src/assets/robots-staging.txt')) {
      // Create staging robots file.
      copy($drupal_root . '/profiles/varbase/src/assets/robots-staging.txt', $drupal_root . '/robots-staging.txt');
    }

    if ($fs->exists($drupal_root . '/.htaccess')
      && $fs->exists($drupal_root . '/profiles/varbase/src/assets/htaccess_extra')) {

      // Alter .htaccess file.
      $htaccess_path = $drupal_root . '/.htaccess';
      $htaccess_lines = file($htaccess_path);
      $lines = [];
      foreach ($htaccess_lines as $line) {
        $lines[] = $line;
        if (strpos($line, "RewriteEngine on") !== FALSE) {
          $lines = array_merge($lines, file($drupal_root . '/profiles/varbase/src/assets/htaccess_extra'));
        }
      }
      file_put_contents($htaccess_path, $lines);
    }

    if ($fs->exists($drupal_root . '/profiles/varbase/src/assets/development.services.yml')) {
      // Alter development.services.yml to have Varbase's Local development
      // services.
      copy($drupal_root . '/profiles/varbase/src/assets/development.services.yml', $drupal_root . '/sites/development.services.yml');
    }
  }

  /**
   * Find and return the path to .git repository in root folder.
   *
   * @param string $root
   *   The Drupal root directory.
   */
  private static function removeWindowsGitDirectories($root) {
    foreach (scandir($root) as $dirOrFile) {
      if ('.' === $dirOrFile || '..' === $dirOrFile) {
        continue;
      }

      if ('.git' === $dirOrFile) {
        self::rmdirWindows($root . '/.git');
      }
      elseif (!is_file($root . '/' . $dirOrFile)) {
        self::removeWindowsGitDirectories($root . '/' . $dirOrFile);
      }
    }
  }

  /**
   * Remove a directory on Windows.
   *
   * @param string $dirname
   *   The directory name.
   */
  private static function rmdirWindows($dirname) {
    if (is_file($dirname)) {
      unlink($dirname);
      return;
    }

    $dir = dir($dirname);
    while (FALSE !== $entry = $dir->read()) {
      if ($entry === '.' || $entry === '..') {
        continue;
      }
      self::rmdirWindows("$dirname/$entry");
    }

    $dir->close();
    rmdir($dirname);
  }

}
