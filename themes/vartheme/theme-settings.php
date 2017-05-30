<?php

/**
 * @file
 * theme-settings.php
 *
 * Provides theme settings for vartheme.
 */

use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Url;

/**
 * Implements hook_form_FORM_ID_alter().
 */
function vartheme_form_system_theme_settings_alter(&$form, FormStateInterface $form_state, $form_id = NULL) {
  // Vertical tabs.
  $form['vartheme'] = array(
    '#type' => 'vertical_tabs',
    '#prefix' => '<h2><small>' . t('Vartheme Settings') . '</small></h2>',
    '#weight' => -20,
  );

  // General Vertical Tab For vartheme Settings.
  $form['vartheme_general'] = array(
    '#type' => 'details',
    '#title' => t('General'),
    '#group' => 'vartheme',
  );

  $form['vartheme_general']['header'] = array(
    '#type' => 'details',
    '#title' => t('Header'),
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  // Adding check-box header fluid container.
  $form['vartheme_general']['header']['header_container'] = array(
    '#type' => 'checkbox',
    '#title' => t('Header Fluid Container'),
    '#description' => t('Use <code>.container-fluid</code> class instead of <code>.container</code> for the Header region.<br />See: @vartheme_link', array(
      '@vartheme_link' => Drupal::l('Fluid container', Url::fromUri('http://getbootstrap.com/css/', ['absolute' => TRUE, 'fragment' => 'grid-example-fluid'])),
    )),
    '#default_value' => theme_get_setting('header_container'),
  );
}
