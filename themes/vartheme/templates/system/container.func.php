<?php
/**
 * @file
 * container.func.php
 */

/**
 * Overrides theme_container().
 *
 * This file is not needed after updating bootstrap theme to 3.1.
 */
function vartheme_container($variables) {
  $element = $variables['element'];

  // Ensure #attributes is set.
  $element += array('#attributes' => array());

  // Special handling for form elements.
  if (isset($element['#array_parents'])) {
    // Assign an html ID.
    if (!isset($element['#attributes']['id'])) {
      $element['#attributes']['id'] = $element['#id'];
    }

    // Core's "form-wrapper" class is required for states.js to function.
    $element['#attributes']['class'][] = 'form-wrapper';

    // Add Bootstrap "form-group" class.
    $element['#attributes']['class'][] = 'form-group';
  }

  return '<div' . drupal_attributes($element['#attributes']) . '>' . $element['#children'] . '</div>';
}
