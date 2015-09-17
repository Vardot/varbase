<?php

/**
 * Implements template_preprocess_html().
 */
function varbase_support_preprocess_html(&$variables) {
  if (arg(0) == 'node' && arg(1) == 'add' && arg(2) === NULL) {
    // Remove stupid classes added by drupal on wrong pages.
    $variables['classes_array'] = array_diff($variables['classes_array'], array('page-node-add', 'page-node'));
  }
}

/**
 * Implements template_preprocess_node().
 */
function varbase_support_preprocess_node(&$variables) {
  if ($variables['display_submitted']) {
    $date = $variables['date'];
    $isodate = format_date($variables['created'], 'custom', 'c');
    
    $variables['submitted'] = t(
      'Submitted by !username on !datetime',
      array(
        '!username' => $variables['name'],
        '!datetime' => theme('varbase_time', array('date' => $date, 'isodate' => $isodate))
      )
    );
  }
}
