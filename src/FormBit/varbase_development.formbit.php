<?php

/**
 * @file
 * FormBit file for varbase_development feature mdoule.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Get editable config names.
 *
 * @return array
 *   Array of config names, and list of values.
 */
function varbase_development_get_editable_config_names() {
  $editable_cofnigs = [
    'system.logging' => [
      'error_level' => ERROR_REPORTING_HIDE,
    ],
  ];

  return $editable_cofnigs;
}

/**
 * Build form bit.
 *
 * @param array $formbit
 *   FormBit for the form.
 * @param FormStateInterface $form_state
 *   Form status.
 * @param array $install_state
 *   Install state.
 */
function varbase_development_build_formbit(array &$formbit, FormStateInterface &$form_state, array &$install_state = NULL) {
  $formbit['error_level'] = [
    '#type' => 'radios',
    '#title' => t('Error messages to display'),
    '#default_value' => ERROR_REPORTING_HIDE,
    '#options' => [
      ERROR_REPORTING_HIDE => t('None'),
      ERROR_REPORTING_DISPLAY_SOME => t('Errors and warnings'),
      ERROR_REPORTING_DISPLAY_ALL => t('All messages'),
      ERROR_REPORTING_DISPLAY_VERBOSE => t('All messages, with backtrace information'),
    ],
    '#description' => t('It is recommended that sites running on production environments do not display any errors.'),
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
function varbase_development_submit_formbit(array $editable_config_values) {
  $configFactory = \Drupal::configFactory()->getEditable('system.logging');
  $configFactory->set('error_level', $editable_config_values['system.logging']['error_level']);
  $configFactory->save(TRUE);
}
