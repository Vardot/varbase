<?php

/**
 * Implements hook_preprocess_panels_pane().
 *
 */
function vartheme_preprocess_panels_pane(&$variables) {
  $variables['classes_array'][] = 'clearfix';
}
