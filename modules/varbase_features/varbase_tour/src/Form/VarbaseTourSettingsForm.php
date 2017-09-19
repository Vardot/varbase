<?php

namespace Drupal\varbase_tour\Form;

use Drupal\Core\Form\ConfigFormBase;
use Drupal\Core\Form\FormStateInterface;

/**
 * Provides form for managing module settings.
 */
class VarbaseTourSettingsForm extends ConfigFormBase {

  /**
   * Get the from ID.
   */
  public function getFormId() {
    return 'varbase_tour_settings';
  }

  /**
   * Get the editable config names.
   */
  protected function getEditableConfigNames() {
    return ['varbase_tour.settings'];
  }

  /**
   * Build the form.
   */
  public function buildForm(array $form, FormStateInterface $form_state) {

    $config = $this->config('varbase_tour.settings');
    $form['settings']['welcome_status'] = [
      '#type' => 'checkbox',
      '#default_value' => $config->get('welcome_status'),
      '#title' => t('Varbase welcome message status'),
      '#description' => t('<p>Check this checkbox if you want to show the varbase welcome message at the front page when the user have "<front>?welcome" in the address.</p><p>By visiting "<front>/?tour=1&welcome=done" this check box will be unchecked.</p>'),
    ];

    return parent::buildForm($form, $form_state);
  }

  /**
   * Submit Form.
   */
  public function submitForm(array &$form, FormStateInterface $form_state) {

    $config = $this->config('varbase_tour.settings');
    $config->set('welcome_status', $form_state->getValue('welcome_status'));
    $config->save();

    parent::submitForm($form, $form_state);
  }
  
}
