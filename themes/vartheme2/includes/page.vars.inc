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
function vartheme2_preprocess_page(&$variables) {
  // Add information about the number of sidebars.
  $variables['print_logo'] = base_path() . path_to_theme() . '/logo-print.png';
  if (!empty($variables['page']['sidebar_first']) && !empty($variables['page']['sidebar_second'])) {
    $variables['content_column_class'] = ' col-md-6 col-sm-9 col-md-push-3 col-xs-12';
    $variables['first_sidebar_column_class'] = ' col-md-pull-6';
    $variables['second_sidebar_column_class'] = '';
  }
  elseif(!empty($variables['page']['sidebar_first']) && empty($variables['page']['sidebar_second'])){
    $variables['content_column_class'] = ' col-md-9 col-sm-9 col-md-push-3 col-xs-12';
    $variables['first_sidebar_column_class'] = ' col-md-pull-9';
    $variables['second_sidebar_column_class'] = '';
  }
  elseif(empty($variables['page']['sidebar_first']) && !empty($variables['page']['sidebar_second'])){
    $variables['content_column_class'] = ' col-md-9 col-sm-9 col-xs-12';
    $variables['first_sidebar_column_class'] = '';
    $variables['second_sidebar_column_class'] = ' col-sm-3';
  }
  else {
    $variables['content_column_class'] = ' col-sm-12';
    $variables['first_sidebar_column_class'] = '';
    $variables['second_sidebar_column_class'] = '';
  }

  // Unset the page title if no_title context is set
  if (context_isset('context', 'no_title')) {
    $variables['title'] = '';
  }
}