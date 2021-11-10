<?php

/**
 * @file
 * FormBit file for varbase_development feature mdoule.
 */

use Drupal\Core\Form\FormStateInterface;
use Drupal\Component\Utility\EmailValidator;

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
    'reroute_email.settings' => [
      'address' => 'dev-catchall@vardot.com',
      'whitelist' => '*@vardot.com',
    ],
  ];

  return $editable_cofnigs;
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

  $formbit['address'] = [
    '#type' => 'textfield',
    '#title' => t('Rerouting email addresses'),
    '#default_value' => 'dev-catchall@vardot.com',
    '#description' => t('Provide a space, comma, or semicolon-delimited list of email addresses.<br/>Every destination email address which is not on "Whitelisted email addresses" list will be rerouted to these addresses.<br/>If the field is empty and no value is provided, all outgoing emails would be aborted and the email would be recorded in the recent log entries (if enabled).'),
    '#element_validate' => ['validate_formbit_emails'],
  ];

  $formbit['whitelist'] = [
    '#type' => 'textfield',
    '#title' => t('Whitelisted email addresses'),
    '#default_value' => '*@vardot.com',
    '#description' => ('Provide a space, comma, or semicolon-delimited list of email addresses to pass through. <br/>Every destination email address which is not on this list will be rerouted.<br/>If the field is empty and no value is provided, all outgoing emails would be rerouted.<br/>We can use wildcard email "*@example.com" to whitelist all emails by the domain.'),
    '#element_validate' => ['validate_formbit_emails'],
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
  // Save the changed values for system.logging config.
  $systemLoggingConfig = \Drupal::configFactory()->getEditable('system.logging');
  $systemLoggingConfig->set('error_level', $editable_config_values['system.logging']['error_level']);
  $systemLoggingConfig->save(TRUE);
  // Save the changed values for reroute_email.settings config.
  $rerouteEmailSettingsConfig = \Drupal::configFactory()->getEditable('reroute_email.settings');
  $rerouteEmailSettingsConfig->set('address', $editable_config_values['reroute_email.settings']['address']);
  $rerouteEmailSettingsConfig->set('whitelist', $editable_config_values['reroute_email.settings']['whitelist']);
  $rerouteEmailSettingsConfig->save(TRUE);
}

/**
 * Validate multiple email addresses field.
 *
 * @param array $element
 *   A field array to validate.
 * @param \Drupal\Core\Form\FormStateInterface $form_state
 *   The current state of the form.
 */
function validate_formbit_emails(array $element, FormStateInterface $form_state) {
  // Allow only valid email addresses.
  $addresses = formbit_reroute_email_split_string($form_state->getValue($element['#name']));
  $email_validator = new EmailValidator();
  foreach ($addresses as $address) {
    if (!$email_validator->isValid($address)) {
      $form_state->setErrorByName($element['#name'], t('@address is not a valid email address.', ['@address' => $address]));
    }
  }

  // Save value in usable way to use as `to` param in drupal_mail.
  // String "email@example.com; ;; , ,," save just as "email@example.com".
  // This will be ignored if any validation errors occur.
  $form_state->setValue($element['#name'], implode(',', $addresses));
}

/**
 * Split a string into an array by pre defined allowed delimiters.
 *
 * Items may be separated by any number and combination of:
 * spaces, commas, semicolons, or newlines.
 *
 * @param string $string
 *   A string to be split into an array.
 *
 * @return array
 *   An array of unique values from a string.
 */
function formbit_reroute_email_split_string($string) {
  $array = preg_split('/[\s,;\n]+/', $string, -1, PREG_SPLIT_NO_EMPTY);

  // Remove duplications.
  $array = array_unique($array);

  return $array;
}
