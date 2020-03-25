<?php

namespace Drupal\varbase\Form;

use Drupal\Core\Extension\InfoParserInterface;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\StringTranslation\TranslationInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\Core\Language\LanguageManager;
use Drupal\Core\Config\ConfigFactoryInterface;
use Drupal\Core\DependencyInjection\ContainerInjectionInterface;
use Drupal\Core\StringTranslation\StringTranslationTrait;

/**
 * Defines form for selecting Varbase's Multiligual configuration options form.
 */
class ConfigureMultilingualForm extends FormBase implements ContainerInjectionInterface {

  use StringTranslationTrait;

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
   * The config factory service.
   *
   * @var \Drupal\Core\Config\ConfigFactoryInterface
   */
  protected $configFactory;

  /**
   * Configure Multilingual Form constructor.
   *
   * @param string $root
   *   The Drupal application root.
   * @param \Drupal\Core\Extension\InfoParserInterface $info_parser
   *   The info parser service.
   * @param \Drupal\Core\StringTranslation\TranslationInterface $translator
   *   The string translation service.
   * @param \Drupal\varbase\Form\FormHelper $form_helper
   *   The form helper.
   * @param \Drupal\Core\Config\ConfigFactoryInterface $config_factory
   *   The config factory service.
   */
  public function __construct($root, InfoParserInterface $info_parser, TranslationInterface $translator, FormHelper $form_helper, ConfigFactoryInterface $config_factory) {
    $this->root = $root;
    $this->infoParser = $info_parser;
    $this->stringTranslation = $translator;
    $this->formHelper = $form_helper;
    $this->configFactory = $config_factory;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    return new static(
      $container->get('app.root'),
      $container->get('info_parser'),
      $container->get('string_translation'),
      $container->get('varbase.form_helper'),
      $container->get('config.factory')
    );
  }

  /**
   * {@inheritdoc}
   */
  public function getFormId() {
    return 'varbase_multilingual_configuration';
  }

  /**
   * {@inheritdoc}
   */
  public function buildForm(array $form, FormStateInterface $form_state, array &$install_state = NULL) {

    $standard_languages = LanguageManager::getStandardLanguageList();
    $select_options = [];
    $browser_options = [];

    foreach ($standard_languages as $langcode => $language_names) {
      $select_options[$langcode] = $language_names[0];
      $browser_options[$langcode] = $langcode;
    }

    asort($select_options);
    $default_langcode = $this->configFactory->getEditable('system.site')->get('default_langcode');

    // Save the default language name.
    $default_language_name = $select_options[$default_langcode];

    // Remove the default language from the list of multilingual languages.
    if (isset($select_options[$default_langcode])) {
      unset($select_options[$default_langcode]);
    }

    if (isset($browser_options[$default_langcode])) {
      unset($browser_options[$default_langcode]);
    }

    $form['#title'] = $this->t('Multilingual configuration');
    $form['multilingual_configuration_introduction'] = [
      '#weight' => -1,
      '#prefix' => '<p>',
      '#markup' => '<b>' . $default_language_name . '</b> ' . $this->t("is the default language."),
      '#suffix' => '</p>',
    ];

    $form['enable_multilingual'] = [
      '#type' => 'checkbox',
      '#title' => $this->t('Enable multiple languages for this site'),
      '#description' => $this->t('This will enable the necessary modules for a multilingual website. These include: Language, Interface Translation, Content Translation, Configuration Translation, and its recommended configuration.'),
      '#default_value' => FALSE,
    ];

    $form['multilingual_languages'] = [
      '#type' => 'select',
      '#title' => $this->t("Please select your site's other language(s)"),
      '#description' => $this->t('You can skip this and add languages later.'),
      '#options' => $select_options,
      '#multiple' => TRUE,
      '#size' => 8,
      '#attributes' => ['style' => 'width:100%;'],
      '#states' => [
        'visible' => [
          ':input[name="enable_multilingual"]' => ['checked' => TRUE],
        ],
        'invisible' => [
          ':input[name="enable_multilingual"]' => ['checked' => FALSE],
        ],
      ],
    ];

    $form['actions'] = [
      'continue' => [
        '#type' => 'submit',
        '#value' => $this->t('Save and continue'),
        '#button_type' => 'primary',
      ],
      '#type' => 'actions',
      '#weight' => 5,
    ];

    return $form;
  }

  /**
   * {@inheritdoc}
   */
  public function submitForm(array &$form, FormStateInterface $form_state) {
    // Get the value of enable multilingual checkbox.
    $enable_multilingual = $form_state->getValue('enable_multilingual');
    if (isset($enable_multilingual)
        && $enable_multilingual == TRUE) {
      $GLOBALS['install_state']['varbase']['enable_multilingual'] = TRUE;
    }
    else {
      $GLOBALS['install_state']['varbase']['enable_multilingual'] = FALSE;
    }

    // Get list of selected multilingual languages.
    $multilingual_languages = $form_state->getValue('multilingual_languages');
    if (isset($multilingual_languages)
        && is_array($multilingual_languages)
        && count($multilingual_languages) > 0) {
      $multilingual_languages = array_filter($multilingual_languages);
    }
    else {
      $multilingual_languages = [];
    }
    $GLOBALS['install_state']['varbase']['multilingual_languages'] = $multilingual_languages;

  }

}
