<?php
/**
 * Implements hook_css_alter().
 */
function vartheme2_css_alter(&$css) {
  $user_module_path = drupal_get_path('module', 'user');
  $theme_path = drupal_get_path('theme', 'vartheme2');
  // Add user theme.
  $user_css = $user_module_path . '/user.css';
  $css[$user_css] = array(
    'data' => $user_css,
    'type' => 'file',
    'every_page' => TRUE,
    'media' => 'all',
    'preprocess' => TRUE,
    'group' => CSS_THEME,
    'browsers' => array('IE' => TRUE, '!IE' => TRUE),
    'weight' => 0
  );
}