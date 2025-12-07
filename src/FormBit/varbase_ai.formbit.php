<?php

/**
 * @file
 * FormBit file for varbase_ai recipe module.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Get editable config names.
 *
 * @return array
 *   Array of config names, and list of values.
 */
function varbase_ai_get_editable_config_names() {
  $varbase_ai_editable_configs = [
    'key.key.open_ai_key' => [
      'key_value' => 'sk-change-this',
    ],
  ];

  return $varbase_ai_editable_configs;
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
function varbase_ai_build_formbit(array &$formbit, FormStateInterface &$form_state, ?array &$install_state = NULL) {
  $formbit['key_value'] = [
    '#type' => 'textfield',
    '#title' => ('API Key'),
    '#default_value' => 'sk-change-this',
    '#description' => t('The API key is required to interface with OpenAI services. Get your API key by signing up on the <a href=":link" target="_blank">OpenAI website</a>.', [':link' => 'https://openai.com/api']),
    '#element_validate' => ['validate_formbit_openai_api_key'],
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

  // Save the changed values for the OpenAI key config.
  if (isset($editable_config_values['key.key.open_ai_key'])
    && isset($editable_config_values['key.key.open_ai_key']['key_value'])) {

    $aiKeyConfig = \Drupal::configFactory()->getEditable('key.key.open_ai_key');
    $aiKeyConfig->set('key_provider_settings', ['key_value' => $editable_config_values['key.key.open_ai_key']['key_value']]);
    $aiKeyConfig->save(TRUE);
  }
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
