<?php
/**
 * @file
 * form-element.vars.php
 */

/**
 * Overrides theme_form_element().
 */
function vartheme_preprocess_form_element(&$variables) {
  $element = &$variables['element'];

  // Add a span to wrap title for radio elements to help with styling
  if (isset($element['#title']) && $element['#type'] == "radio") {
    $element['#title'] = '<span>' . $element['#title'] . '</span>';
  }
}
