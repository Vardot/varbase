<?php
/**
 * @file
 * Enables modules and site configuration for a Varbase site installation.
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function varbase_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My site');

  // Default email to start with noreply@ (the site can not send emails back).
  $form['site_information']['site_mail']['#default_value'] = 'noreply@' . $_SERVER['SERVER_NAME'];

  // Default user 1 username should be 'webmaster'.
  $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
  $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@' . $_SERVER['SERVER_NAME'];
}
