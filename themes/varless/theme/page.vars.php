<?php
/**
 * @file
 * page.vars.php
 */

/**
 * Implements hook_preprocess_page().
 *
 * @see page.tpl.php
 */
function varless_preprocess_page(&$variables) {
  // Add information about the number of sidebars.

  $variables['print_logo'] = base_path() . path_to_theme() . '/logo-print.png';
  $search_block = drupal_get_form('search_form'); 
  $search_box = drupal_render($search_block); 
  $variables['search_box'] = $search_box;

  // Unset the page title if no_title context is set
  if (context_isset('context', 'no_title')) {
    $variables['title'] = '';
  }
}