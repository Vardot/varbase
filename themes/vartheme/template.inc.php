<?php
/**
 * @file
 * Added Initialization and functionality for Vardot Base theme.
 */

/**
 * Check if Boostrap library is properly downloaded and configured.
 */
if (!file_exists('sites/all/libraries/bootstrap')) {
  drupal_set_message(t('<a href="@link">Bootstrap library</a> was not detected. Please download it and place it in 
    <em>sites/all/libraries/bootstrap</em> then symlink it to the bootstrap them in <em>profiles/varbase/themes/bootstrap</em>', array('@link' => 'http://twitter.github.com/bootstrap/')), 'error');
}
elseif (!file_exists('profiles/varbase/themes/bootstrap/bootstrap')) {
  drupal_set_message(t('<a href="@link">Bootstrap library</a> was properly symlinked. Please symlink from
    <em>sites/all/libraries/bootstrap</em> to the bootstrap them in <em>profiles/varbase/themes/bootstrap</em>.<br />To do so, go to <em>profiles/varbase/themes/bootstrap</em>
    and type in the command <code>ln -s ../../../../sites/all/libraries/bootstrap bootstrap</code>.', array('@link' => 'http://twitter.github.com/bootstrap/')), 'error');
}

/**
 * Helper function to be invoked from template_preprocess_html().
 */
function _vartheme_preprocess_html(&$variables) {
  // Send X-UA-Compatible HTTP header to force IE to use the most recent
  // rendering engine or use Chrome's frame rendering engine if available.
  // This also prevents the IE compatibility mode button to appear when using
  // conditional classes on the html tag.
  if (is_null(drupal_get_http_header('X-UA-Compatible'))) {
    drupal_add_http_header('X-UA-Compatible', 'IE=edge,chrome=1');
  }

  if (theme_get_setting('vartheme_responsive_layout') == 1) {
    drupal_add_css(path_to_theme() . '/css/large.css', array(
      'group' => CSS_THEME,
      'every_page' => true,
      'media' => '(min-width: 1200px)',
      'weight' => 1.002
    ));
    drupal_add_css(path_to_theme() . '/css/tablet.css', array(
      'group' => CSS_THEME,
      'every_page' => true,
      'media' => '(max-width: 767px)',
      'weight' => 1.003
    ));
    drupal_add_css(path_to_theme() . '/css/mobile.css', array(
      'group' => CSS_THEME,
      'every_page' => true,
      'media' => '(max-width: 480px)',
      'weight' => 1.004
    ));
  }

  //Add Conditional Stylesheet for IE
  drupal_add_css(path_to_theme() . '/css/lte-ie-7.css', array(
    'group' => CSS_THEME,
    'every_page' => true,
    'weight' => 2,
    'browsers' => array(
      'IE' => 'lte IE 7',
      '!IE' => FALSE
      ),
    'preprocess' => FALSE
  ));
  drupal_add_css(path_to_theme() . '/css/lte-ie-8.css', array(
    'group' => CSS_THEME,
    'every_page' => true,
    'weight' => 2,
    'browsers' => array(
      'IE' => 'lte IE 8',
      '!IE' => FALSE
      ),
    'preprocess' => FALSE
  ));
}

function vartheme_css_alter(&$css) {
  foreach ($css as $key => $value) {
    if (strstr($key, 'bootstrap-responsive.css')) {
      unset($css[$key]);
    }
  }
}

function vartheme_preprocess_block(&$vars, $hook) {
  // Add Aria Roles via attributes, thanks to JohnAlbin for the implementation.
  // check http://drupal.org/node/1246540 for more info about the issue.
  switch ($vars['block']->module) {
    case 'system':
      switch ($vars['block']->delta) {
        case 'main':
          // Note: the "main" role goes in the page.tpl, not here.
          break;
        case 'help':
        case 'powered-by':
          $vars['attributes_array']['role'] = 'complementary';
          break;
        default:
          // Any other "system" block is a menu block.=        
          $vars['attributes_array']['role'] = 'navigation';
          break;
      }
      break;
    case 'menu':
    case 'menu_block':
    case 'blog':
    case 'book':
    case 'comment':
    case 'forum':
    case 'shortcut':
    case 'statistics':
      $vars['attributes_array']['role'] = 'navigation';
      break;
    case 'search':
      $vars['attributes_array']['role'] = 'search';
      break;
    case 'help':
    case 'aggregator':
    case 'locale':
    case 'poll':
    case 'profile':
      $vars['attributes_array']['role'] = 'complementary';
      break;
    case 'node':
      switch ($vars['block']->delta) {
        case 'syndicate':
          $vars['attributes_array']['role'] = 'complementary';
          break;
        case 'recent':
          $vars['attributes_array']['role'] = 'navigation';
          break;
      }
      break;
    case 'user':
      switch ($vars['block']->delta) {
        case 'login':
          $vars['attributes_array']['role'] = 'form';
          break;
        case 'new':
        case 'online':
          $vars['attributes_array']['role'] = 'complementary';
          break;
      }
      break;
  }
}