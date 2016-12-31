<?php

namespace Drupal\varbase\Form;

use Drupal\Core\Extension\ExtensionDiscovery;
use Drupal\Core\Extension\InfoParserInterface;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Render\Element;
use Drupal\Core\StringTranslation\TranslationInterface;
use Drupal\varbase\Form\AssemblerFormHelper;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Defines a form for selecting Varbase's extra compoennts for the assembler to install.
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
   * AssemblerForm constructor.
   *
   * @param \Drupal\varbase\Extender $extender
   *   The Varbase extender configuration object.
   * @param string $root
   *   The Drupal application root.
   * @param \Drupal\Core\Extension\InfoParserInterface $info_parser
   *   The info parser service.
   * @param \Drupal\Core\StringTranslation\TranslationInterface $translator
   *   The string translation service.
   * @param \Drupal\varbase\FormHelper $form_helper
   *   The form helper.
   */
  public function __construct($root, InfoParserInterface $info_parser, TranslationInterface $translator, AssemblerFormHelper $assembler_form_helper) {
    $this->root = $root;
    $this->infoParser = $info_parser;
    $this->stringTranslation = $translator;
    $this->formHelper = $assembler_form_helper;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    return new static(
    $container->get('app.root'),
    $container->get('info_parser'),
    $container->get('string_translation'),
    $container->get('varbase.assembler_form_helper')
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
   * And make sure that we do have the extra component in the files.
   */
  protected function getExtraComponentsInfo() {
    $component_discovery = new ExtensionDiscovery($this->root);
    $extra_components_to_assemble = array(
      'varbase_development',
    );

    $combined_extra_components = array_combine($extra_components_to_assemble, $extra_components_to_assemble);
    $extra_components = array_intersect_key($component_discovery->scan('module'),$combined_extra_components);

    foreach ($extra_components as $key => $extra_component) {
      $extra_component_info = $this->infoParser->parse($extra_component->getPathname());
      yield $key => $extra_component_info;
    }
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
      ],
      '#type' => 'actions',
      '#weight' => 5,
    ];


    foreach ($this->getExtraComponentsInfo() as $key => $info) {
      $form['extra_components']['#options'][$key] = $info['name'];
    }

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
