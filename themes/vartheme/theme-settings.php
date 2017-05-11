<?php
/**
 * @file
 * theme-settings.php
 *
 * Provides theme settings for vartheme.
 *
 */

use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Url;

/**
 * Implements hook_form_FORM_ID_alter().
 */
function vartheme_form_system_theme_settings_alter(&$form, FormStateInterface $form_state, $form_id = NULL) {
  // Vertical tabs
  $form['vartheme'] = array(
    '#type' => 'vertical_tabs',
    '#prefix' => '<h2><small>' . t('Vartheme Settings') . '</small></h2>',
    '#weight' => -10,
  );

  // General.
  $form['varthemegeneral'] = array(
    '#type' => 'details',
    '#title' => t('General'),
    '#group' => 'vartheme',
  );
$form['varthemegeneral']['header'] = array(
    '#type' => 'details',
    '#title' => t('Header'),
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );
$form['varthemegeneral']['header']['vartheme_header_container'] = array(
    '#type' => 'checkbox',
    '#title' => t('Header Fluid Container'),
    '#description' => t('Use <code>.container-fluid</code> class instead of <code>.container</code> class for Header region. <br /> See : @vartheme_link.', array('@vartheme_link' => Drupal::l('Fluid container' , Url::fromUri('http://getbootstrap.com/css/' , ['absolute' => TRUE , 'fragment' => 'grid-example-fluid'])),
    )),    
    '#default_value' => theme_get_setting('vartheme_header_container'),
  );
}
