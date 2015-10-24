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

/**
 * Implements template_preprocess_panels_pane().
 *
 * Preprocess function for fieldable-panels-pane.tpl.php
 */
function varbase_support_preprocess_panels_pane(&$vars) {
  // Add new theme hook suggestion to help with themeing effort.
  if (!empty($vars['content']['#view_mode'])) {
    $vars['theme_hook_suggestions'][] = 'panels_pane__' . $vars['content']['#view_mode'];
  }
  if (!empty($vars['content']['#bundle'])) {
    $vars['theme_hook_suggestions'][] = 'panels_pane__' . $vars['content']['#bundle'];
  }
  if (!empty($vars['content']['#bundle']) && !empty($vars['content']['#view_mode'])) {
    $vars['theme_hook_suggestions'][] = 'panels_pane__' . $vars['content']['#bundle'] . '__' . $vars['content']['#view_mode'];
  }
}

/**
 * Implements template_preprocess_fieldable_panels_pane().
 *
 * Preprocess function for fieldable-panels-pane.tpl.php
 */
function varbase_support_preprocess_fieldable_panels_pane(&$vars) {
  // Add new theme hook suggestion to help with themeing effort.
  if (!empty($vars['elements']['#view_mode'])) {
    $vars['theme_hook_suggestions'][] = 'fieldable_panels_pane__' . $vars['elements']['#view_mode'];
    $vars['theme_hook_suggestions'][] = 'fieldable_panels_pane__' . $vars['elements']['#element']->bundle . '__' . $vars['elements']['#view_mode'];
  }
}
