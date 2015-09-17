<?php

/**
 * @file
 * This file contains the main theme functions hooks and overrides.
 */

/**
 * Override or insert variables into the maintenance page template.
 */
function vartheme_admin_preprocess_maintenance_page(&$vars, $hook) {
  // While markup for normal pages is split into page.tpl.php and html.tpl.php,
  // the markup for the maintenance page is all in the single
  // maintenance-page.tpl.php template. So, to have what's done in
  // adminimal_preprocess_html() also happen on the maintenance page, it has to be
  // called here.
  vartheme_admin_preprocess_html($vars, $hook);
}

/**
 * Override or insert variables into the html template.
 */
function vartheme_admin_preprocess_html(&$vars, $hook) {
  // Send X-UA-Compatible HTTP header to force IE to use the most recent
  // rendering engine or use Chrome's frame rendering engine if available.
  // This also prevents the IE compatibility mode button to appear when using
  // conditional classes on the html tag.
  if (is_null(drupal_get_http_header('X-UA-Compatible'))) {
    drupal_add_http_header('X-UA-Compatible', 'IE=edge,chrome=1');
  }

  $uber_admin_path = drupal_get_path('theme', 'vartheme_admin');
  drupal_add_css($uber_admin_path . '/css/vartheme_admin.css', array('group' => CSS_THEME, 'media' => 'all', 'weight' => 9999));

  // Return early, so the maintenance page does not call any of the code below.
  if ($hook != 'html') {
    return;
  }
}
