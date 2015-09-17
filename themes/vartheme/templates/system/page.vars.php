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
function vartheme_preprocess_page(&$variables) {
  /* Ensure that important region are printed even if they are empty,
   * they have wrappers that impact the theme drastically.
   */
  foreach (array('footer', 'navigation', 'header', 'content_top') as $name) {
    if (isset($variables['page'][$name]) && !$variables['page'][$name]) {
      $variables['page'][$name]['#theme_wrappers'] = array('region');
      $variables['page'][$name]['#region'] = $name;
    }
  }

  $variables['navbar_classes_array'] = array_diff($variables['navbar_classes_array'], array('container'));

  // check if this is a panel page
  if($panel_page = page_manager_get_current_page()) {
    // add a generic suggestion for all panel pages
    $variables['theme_hook_suggestions'][] = 'page__panel';
    $variables['theme_hook_suggestions'][] = 'page__panel__' . $panel_page['name'];

    // get current display and layout
    $panel_display = panels_get_current_page_display();
    if (isset($panel_display) && !empty($panel_display->layout)) {
      $variables['theme_hook_suggestions'][] = 'page__panel__' . $panel_display->layout;
    }
  }

  // Add information about the number of sidebars.
  $variables['container'] = 'container';
  $variables['content_column_class_array'] = array('col-sm-12');
  $variables['sidebar_first_column_class_array'] = array('col-sm-3', 'flip');
  $variables['sidebar_second_column_class_array'] = array('col-sm-3', 'flip');

  if (!empty($variables['page']['sidebar_first']) && !empty($variables['page']['sidebar_second'])) {
    $variables['content_column_class_array'] = array('col-sm-6', 'flip', 'col-md-push-3');
    $variables['sidebar_first_column_class_array'][] = 'col-md-pull-6';
  }
  elseif (!empty($variables['page']['sidebar_first'])) {
    $variables['content_column_class_array'] = array('col-sm-9', 'flip', 'col-md-push-3');
    $variables['sidebar_first_column_class_array'][] = 'col-md-pull-9';
  }
  elseif (!empty($variables['page']['sidebar_second'])) {
    $variables['content_column_class_array'] = array('col-sm-9', 'flip');
  } else {
    if ($panel_page = page_manager_get_current_page()) {
      $variables['container'] = 'container-fluid';
    }
  }
}

/**
 * Implements hook_process_page().
 *
 * @see page.tpl.php
 */
function vartheme_process_page(&$variables) {
  global $base_url, $language;

  $variables['content_column_class'] = implode(' ', $variables['content_column_class_array']);
  $variables['sidebar_first_column_class'] = implode(' ', $variables['sidebar_first_column_class_array']);
  $variables['sidebar_second_column_class'] = implode(' ', $variables['sidebar_second_column_class_array']);

  // Provide RTL support for assets as logo, images, etc ...
  if ($language->direction == LANGUAGE_RTL) {
    $rtl_path = str_replace('.png', '-rtl.png', $variables['logo']);
    if (file_exists(str_replace($base_url . '/', '', $rtl_path))) {
      $variables['logo'] = $rtl_path;
    }
  }

  /* Store the page variables in cache so it can be used in region
   * preprocessing.
   * See region--footer.tpl.php
   */
  $page = &drupal_static(__FUNCTION__);
  if (!isset($page)) {
    $page = $variables;
  }
}
