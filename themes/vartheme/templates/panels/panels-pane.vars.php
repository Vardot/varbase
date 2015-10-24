<?php

/**
 * Implements hook_preprocess_panels_pane().
 *
 */
function vartheme_preprocess_panels_pane(&$variables) {
  $variables['classes_array'][] = 'clearfix';
  $variables['container_classes_array'][] = 'container';

  // This view mode have been added to varbase_fpp starter_kit features.
  if (!empty($variables['content']['#view_mode']) && $variables['content']['#view_mode'] == 'varbase_full_screen') {
    $variables['container_classes_array'] = array_diff($variables['container_classes_array'], array('container'));
  }
}

/**
 * Implements hook_preprocess_panels_pane().
 *
 */
function vartheme_process_panels_pane(&$variables) {
  $variables['container_classes'] = implode(' ', $variables['container_classes_array']);
}
