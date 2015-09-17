<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function varbase_support_form_system_site_information_settings_alter(&$form, $form_state) {
  global $user;

  if ($user->uid != 1) {
    $form['front_page']['#access'] = FALSE;
  }
}

/**
 * Implements hook_form_BASE_FORM_ID_alter().
 */
function varbase_support_form_node_form_alter(&$form, &$form_state, $form_id) {
  //Remove promote & sticky from all nodes
  $form['options']['promote']['#access'] = FALSE;
  $form['options']['sticky']['#access'] = FALSE;

  // call a 'private' implemenation of i18n_node_form_node_form_alter()
  $form['#after_build'][] = '_varbase_support_form_node_form_alter';
}

/**
 * Implements hook_form_BASE_FORM_ID_alter().
 *
 * Called by varbase_support_form_node_form_alter
 */
function _varbase_support_form_node_form_alter($form, &$form_state) {
  // Remove the language selection if there is only one language and it is default
  if(isset($form['language']['#options']) &&
    count($form['language']['#options']) < 2 &&
    isset($form['language']['#options'][$form['language']['#default_value']])) {
    $form['language']['#access'] = FALSE;
  }
  return $form;
}
