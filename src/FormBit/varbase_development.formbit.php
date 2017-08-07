<?php

use Drupal\Core\Form\FormStateInterface;

function varbase_development_get_editable_config_names() {
  return ['system.logging' => ['error_level' => ERROR_REPORTING_HIDE,
    ],
  ];
}

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

function varbase_development_submit_formbit(array &$form, FormStateInterface $form_state) {
  $config = \Drupal::configFactory()->getEditable('system.logging');
  $config->set('error_level', $form_state->getValue('error_level'));
  $config->save(TRUE);
}