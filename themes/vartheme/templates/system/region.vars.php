<?php
/**
 * @file
 * region.vars.php
 */

/**
 * Implements hook_preprocess_region().
 */
function vartheme_preprocess_region(&$variables) {
  global $theme;

  $region = $variables['region'];
  $classes = &$variables['classes_array'];
  $variables['page'] = &drupal_static('vartheme_process_page', TRUE);

  // Handle regions.
  switch ($region) {
    case 'content_top':
      $classes[] = 'col-sm-12';
      break;
    case 'content_bottoms':
      $classes[] = 'col-sm-12';
      break;
    case 'footer':
      $classes[] = 'container';
      break;
  }
}
