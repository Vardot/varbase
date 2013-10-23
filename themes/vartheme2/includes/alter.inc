<?php
/**
 * Implements hook_css_alter().
 */
function vartheme2_css_alter(&$css) {
  $theme_path = drupal_get_path('theme', 'vartheme2');
  // Add overrides.
  $override = $theme_path . '/css/overrides.css';
  $css[$override] = array(
    'data' => $override,
    'type' => 'file',
    'every_page' => TRUE,
    'media' => 'all',
    'preprocess' => TRUE,
    'group' => CSS_THEME,
    'browsers' => array('IE' => TRUE, '!IE' => TRUE),
    'weight' => -1,
  );
}