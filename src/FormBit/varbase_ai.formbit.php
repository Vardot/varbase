<?php

/**
 * @file
 * FormBit file for varbase_ai module.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Get editable config names.
 *
 * @return array
 *   Array of config names, and list of values.
 */
function varbase_ai_get_editable_config_names() {
  $editable_configs = [
    'openai.settings' => [
      'api_key' => '',
      'api_org' => '',
    ],
  ];

  return $editable_configs;
}

/**
 * Build form bit.
 *
 * @param array $formbit
 *   FormBit for the form.
 * @param \Drupal\Core\Form\FormStateInterface $form_state
 *   Form status.
 * @param array $install_state
 *   Install state.
 */
function varbase_ai_build_formbit(array &$formbit, FormStateInterface &$form_state, array &$install_state = NULL) {
  $formbit['api_key'] = [
    '#type' => 'textfield',
    '#title' => ('API Key'),
    '#default_value' => "",
    '#description' => t('The API key is required to interface with OpenAI services. Get your API key by signing up on the <a href=":link" target="_blank">OpenAI website</a>.', [':link' => 'https://openai.com/api']),
    '#element_validate' => ['validate_formbit_openai_api_key'],
  ];

  $formbit['api_org'] = [
    '#type' => 'textfield',
    '#title' => t('Organization ID'),
    '#default_value' => "",
    '#description' => t('The organization ID on your OpenAI account. This is required for some OpenAI services to work correctly.'),
    '#element_validate' => ['validate_formbit_openai_api_org'],
  ];

}

/**
 * Submit form bit with editable config values.
 *
 * To update the editable config in drupal active config.
 *
 * @param array $editable_config_values
 *   Editable config values.
 */
function varbase_ai_submit_formbit(array $editable_config_values) {
  // Save the changed values for openai.settings config.
  $openaiConfig = \Drupal::configFactory()->getEditable('openai.settings');
  $openaiConfig->set('api_key', $editable_config_values['openai.settings']['api_key']);
  $openaiConfig->set('api_org', $editable_config_values['openai.settings']['api_org']);
  $openaiConfig->save(TRUE);
}

/**
 * Validate OpenAI API Key.
 *
 * @param array $element
 *   A field array to validate.
 * @param \Drupal\Core\Form\FormStateInterface $form_state
 *   The current state of the form.
 */
function validate_formbit_openai_api_key(array $element, FormStateInterface $form_state) {
  if ($form_state->getValue($element['#name']) == '') {
    $form_state->setErrorByName($element['#name'], t('The API key is required to interface with OpenAI services.'));
  }
}

/**
 * Validate OpenAI API Organization ID.
 *
 * @param array $element
 *   A field array to validate.
 * @param \Drupal\Core\Form\FormStateInterface $form_state
 *   The current state of the form.
 */
function validate_formbit_openai_api_org(array $element, FormStateInterface $form_state) {
  if ($form_state->getValue($element['#name']) == '') {
    $form_state->setErrorByName($element['#name'], t('Please, fill in the organization ID on your OpenAI account.'));
  }
}
