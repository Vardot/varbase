<?php

/**
 * Returns HTML for common Drupal time fields.
 *
 * @param $variables
 *   An associative array containing:
 *     - datetime: the diplayed time formated .
 *     - isodate: the date in ISO 8601 formate
 *
 * @ingroup themeable
 */
function theme_varbase_time($variables) {
  $attributes['datetime'] = $variables['isodate'];

  return '<time' . drupal_attributes($attributes) . '>' . $variables['date'] . '</time>';
}

/**
 * Returns HTML for common Drupal menu tree, without extra styling.
 *
 * @param $variables
 *   An associative array containing:
 *     - tree: the diplayed time formated .
 *
 * @ingroup themeable
 */
function theme_varbase_neutral_tree($variables) {
  return '<ul class="menu">' . $variables['tree'] . '</ul>';
}

/**
 * Implements template_preprocess_HOOK() for theme_varbase_neutral_tree().
 */
function template_preprocess_varbase_neutral_tree(&$variables) {
  $variables['tree'] = $variables['tree']['#children'];
}
