<?php

/**
 * @file
 * FormBit file for varbase_auth feature mdoule.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Get editable config names.
 *
 * @return array
 *   Array of config names, and list of values.
 */
function varbase_auth_get_editable_config_names() {
  $editable_configs = [
    'varbase_auth' => [
      'social_auth_type' => ['social_auth_google'],
    ],
  ];

  return $editable_configs;
}

/**
 * Build form bit.
 *
 * @param array $formbit
 *   FormBit for the form.
 * @param Drupal\Core\Form\FormStateInterface $form_state
 *   Form status.
 * @param array $install_state
 *   Install state.
 */
function varbase_auth_build_formbit(array &$formbit, FormStateInterface &$form_state, array &$install_state = NULL) {
  $formbit['social_auth_type'] = [
    '#type' => 'checkboxes',
    '#title' => t('Social authentications to enable'),
    '#default_value' => ['social_auth_google'],
    '#options' => [
      'social_auth_google' => t('Google'),
      'social_auth_facebook' => t('Facebook'),
      'social_auth_linkedin' => t('Linkedin'),
      'social_auth_twitter' => t('Twitter'),
    ],
  ];
}

/**
 * Submit form bit with editable config values.
 *
 * To update the editable config in drupal active config.
 *
 * @param array $editable_config_values
 *   Editable cofnig values.
 */
function varbase_auth_submit_formbit(array $editable_config_values) {
  $auth_modules = $editable_config_values['varbase_auth']['social_auth_type'];

  if (isset($auth_modules) && is_array($auth_modules) && count($auth_modules) > 0) {

    $modules_to_install = [];
    foreach ($auth_modules as $auth_module) {
      if (is_string($auth_module)) {
        array_push($modules_to_install, $auth_module);
      }
    }

    if (isset($modules_to_install) && is_array($modules_to_install) && count($modules_to_install) > 0) {
      \Drupal::service('module_installer')->install($modules_to_install);
    }
  }
}
