<?php
/**
 * @file
 * Enables modules and site configuration for a Varbase site installation.
 */

use Drupal\Core\Form\FormStateInterface;

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
  $form['site_information']['site_mail']['#attributes']['style'] = 'width: 25em;'
  
  // Default user 1 username should be 'webmaster'.
  $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
  $form['admin_account']['account']['name']['#attributes']['disabled'] = TRUE;
  $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@vardot.com';
  $form['admin_account']['account']['mail']['#description'] = t('In most case, and for <a target="_blank" href="@link">Vardot</a> specific use, we recommend this to always be <em>webmaster@vardot.com</em>.', array('@link' => 'http://vardot.com'));
}