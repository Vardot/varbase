<?php

namespace Drupal\varbase\Form;

use Drupal\Core\Extension\ExtensionDiscovery;
use Drupal\Core\Extension\InfoParserInterface;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\StringTranslation\TranslationInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\varbase\Config\ConfigBit;

/**
 * Defines form for selecting extra compoennts for the assembler to install.
 */
class AssemblerForm extends FormBase {

  /**
   * The Drupal application root.
   *
   * @var string
   */
  protected $root;

  /**
   * The info parser service.
   *
   * @var \Drupal\Core\Extension\InfoParserInterface
   */
  protected $infoParser;

  /**
   * The form helper.
   *
   * @var \Drupal\varbase\AssemblerFormHelper
   */
  protected $formHelper;

  /**
   * Assembler Form constructor.
   *
   * @param string $root
   *   The Drupal application root.
   * @param InfoParserInterface $info_parser
   *   The info parser service.
   * @param TranslationInterface $translator
   *   The string translation service.
   * @param \Drupal\varbase\Form\FormHelper $form_helper
   *   The form helper.
   */
  public function __construct($root, InfoParserInterface $info_parser, TranslationInterface $translator, FormHelper $form_helper) {
    $this->root = $root;
    $this->infoParser = $info_parser;
    $this->stringTranslation = $translator;
    $this->formHelper = $form_helper;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    return new static(
    $container->get('app.root'),
    $container->get('info_parser'),
    $container->get('string_translation'),
    $container->get('varbase.form_helper')
    );
  }

  /**
   * {@inheritdoc}
   */
  public function getFormId() {
    return 'varbase_extra_components';
  }

  /**
   * Get info for each of Varbase's Extra Components.
   *
   * And make sure that we do have the extra component in the files.
   */
  protected function getExtraComponentsInfo($configbit_root) {
    $component_discovery = new ExtensionDiscovery($this->root);

    // Extra Varbase components, which could be selected to be installed.
    $extra_components_to_assemble = ConfigBit::getList($configbit_root . '/extra.components.varbase.bit.yml', 'show_extra_components', TRUE, 'dependencies');
    
    // Combine default Varbase components and selected extra varbase components.
    $combined_extra_components = array_combine($extra_components_to_assemble, $extra_components_to_assemble);
    $extra_components = array_intersect_key($component_discovery->scan('module'), $combined_extra_components);

    foreach ($extra_components as $key => $extra_component) {
      $extra_component_info = $this->infoParser->parse($extra_component->getPathname());
      yield $key => $extra_component_info;
    }
  }
  
  /**
   * Get selected extra varbase's components.
   *
   * @return array
   */
  protected function getSelectedExtraComponents($configbit_root) {
    // Selected Extra Varbase components.
    $selected_extra_components = ConfigBit::getList($configbit_root . '/extra.components.varbase.bit.yml', 'show_extra_components', TRUE, 'selected');

    return $selected_extra_components;
  }

  /**
   * {@inheritdoc}
   */
  public function buildForm(array $form, FormStateInterface $form_state, array &$install_state = NULL) {
    $form['#title'] = $this->t('Extra components');
    $form['extra_components_introduction'] = [
      '#weight' => -1,
      '#prefix' => '<p>',
      '#markup' => $this->t("Select extra components, so that they will be assembled and installed."),
      '#suffix' => '</p>',
    ];
    $form['extra_components'] = [
      '#type' => 'checkboxes',
      '#weight' => 0,
      '#options' => array(),
    ];
    $form['actions'] = [
      'continue' => [
        '#type' => 'submit',
        '#value' => $this->t('Assemble and install'),
        '#button_type' => 'primary',
      ],
      '#type' => 'actions',
      '#weight' => 5,
    ];
    
    // Configbit root folder for varbase profile.
    $configbit_root = \Drupal::root() . '/profiles/varbase/configbit';

    foreach ($this->getExtraComponentsInfo($configbit_root) as $key => $info) {
      $form['extra_components']['#options'][$key] = $info['name'];
    }
    
    // Default selected extra components.
    $form['extra_components']['#default_value'] = $this->getSelectedExtraComponents($configbit_root);

    return $form;
  }

  /**
   * {@inheritdoc}
   */
  public function submitForm(array &$form, FormStateInterface $form_state) {
    $extra_components = $form_state->getValue('extra_components');
    $extra_components = array_filter($extra_components);
    $GLOBALS['install_state']['varbase']['extra_components'] = $extra_components;
  }

}
