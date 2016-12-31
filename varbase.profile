<?php
/**
 * @file
 * Enables modules and site configuration for a Varbase site installation.
 */

use Drupal\Core\Form\FormStateInterface;
use Drupal\varbase\Form\AssemblerForm;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function varbase_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My Official Site Name');

  // Default site email noreply@vardot.com .
  $form['site_information']['site_mail']['#default_value'] = 'noreply@vardot.com';
  $form['site_information']['site_mail']['#attributes']['style'] = 'width: 25em;';

  // Default user 1 username should be 'webmaster'.
  $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
  $form['admin_account']['account']['name']['#attributes']['disabled'] = TRUE;
  $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@vardot.com';
  $form['admin_account']['account']['mail']['#description'] = t('In most case, and for <a target="_blank" href="@link">Vardot</a> specific use, we recommend this to always be <em>webmaster@vardot.com</em>.', array('@link' => 'http://vardot.com'));
}

/**
 * Implements hook_install_tasks().
 */
function varbase_install_tasks() {
  return array(
    'varbase_extra_components' => array(
      'display_name' => t('Extra components'),
      'display' => TRUE,
      'type' => 'form',
      'function' => AssemblerForm::class,
    ),
    'varbase_assemble_extra_components' => array(
      'display_name' => t('Assemble extra components'),
      'display' => TRUE,
      'type' => 'batch',
    ),
  );
}

/**
 * Batch job to assemble Varbase extra components.
 *
 * @param array $install_state
 *   The current install state.
 *
 * @return array
 *   The batch job definition.
 */
function varbase_assemble_extra_components(array &$install_state) {
  $batch = array();
  foreach ($install_state['varbase']['extra_components'] as $extra_component) {
    $batch['operations'][] = ['varbase_assemble_extra_component_then_install', (array) $extra_component];
  }
  return $batch;
}

/**
 * Batch function to assemble needed extra components then install them.
 *
 * @param string|array $extra_component
 *   Name of the extra component
 */
function varbase_assemble_extra_component_then_install($extra_component) {
  // TODO: Add the function of fetching extra components
  // if they are not attached with Varbase Core.
  \Drupal::service('module_installer')->install((array) $extra_component);
}
