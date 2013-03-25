<?php
/**
 * @file
 * Enables modules and site configuration for Varbase site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function varbase_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  $form['site_information']['site_mail']['#field_prefix'] = 'noreply@';
  $form['site_information']['site_mail']['#element_validate'] = array('_varbase_install_configure_sitemail_validate');
  $form['admin_account']['account']['name']['#value'] = 'webmaster';
  $form['admin_account']['account']['name']['#disabled'] = TRUE;
  $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@vardot.com';
  $form['admin_account']['account']['mail']['#description'] = t('In most case, and for <a href="@link">Vardot</a> specific use, we recommend this to always be <em>webmaster@vardot.com</em>.', array('@link' => 'http://vardot.com'));
}

function _varbase_install_configure_sitemail_validate($element, &$form_state, $form) {
  $form_state['values']['site_mail'] = 'noreply@' . $form_state['values']['site_mail'];
}
