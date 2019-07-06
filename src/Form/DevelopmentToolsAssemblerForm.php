<?php

namespace Drupal\varbase\Form;

use Drupal\Core\Extension\InfoParserInterface;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\StringTranslation\TranslationInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\varbase\Config\ConfigBit;

/**
 * Defines form for selecting extra compoennts for the assembler to install.
 */
class DevelopmentToolsAssemblerForm extends FormBase {

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
   * @param \Drupal\Core\Extension\InfoParserInterface $info_parser
   *   The info parser service.
   * @param \Drupal\Core\StringTranslation\TranslationInterface $translator
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
    return 'varbase_development_tool';
  }

  /**
   * {@inheritdoc}
   *
   * @return array
   *   Development tools modules.
   */
  public function buildForm(array $form, FormStateInterface $form_state, array &$install_state = NULL) {
    $form['#title'] = $this->t('Development tools');
    $form['development_tools_introduction'] = [
      '#weight' => -1,
      '#prefix' => '<p>',
      '#markup' => $this->t("If you're only evaluating Varbase, you don't need to install these tools. These tools are needed if you're a developer and you're installing Varbase to build a new site."),
      '#suffix' => '</p>',
    ];

    // Development tools.
    $developmentTools = ConfigBit::getList('configbit/development.tools.varbase.bit.yml', 'show_development_tools', TRUE, 'dependencies', 'profile', 'varbase');
    if (count($developmentTools)) {

      $form['development_tools'] = [
        '#type' => 'fieldset',
      ];

      foreach ($developmentTools as $development_tool_key => $development_tool_info) {

        $checkbox_title = '';
        $checkbox_description = '';
        $checkbox_selected = FALSE;

        if (isset($development_tool_info['title'])) {
          $checkbox_title = $development_tool_info['title'];
        }

        if (isset($development_tool_info['description'])) {
          $checkbox_description = $development_tool_info['description'];
        }

        if (isset($development_tool_info['selected'])) {
          $checkbox_selected = $development_tool_info['selected'];
        }

        // Have a checkbox to enable this development tool.
        $form['development_tools'][$development_tool_key] = [
          '#type' => 'checkbox',
          '#title' => $checkbox_title,
          '#description' => $checkbox_description,
          '#default_value' => $checkbox_selected,
        ];

        // If config_form is ture for this development tool.
        if (isset($development_tool_info['config_form']) &&
                  $development_tool_info['config_form'] == TRUE) {
          $form['development_tools'][$development_tool_key . '_config'] = [
            '#type' => 'fieldset',
            '#title' => $checkbox_title,
            '#states' => [
              'visible' => [
                ':input[name="' . $development_tool_key . '"]' => ['checked' => TRUE],
              ],
              'invisible' => [
                ':input[name="' . $development_tool_key . '"]' => ['checked' => FALSE],
              ],
            ],
          ];

          if (isset($development_tool_info['formbit'])) {
            $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $development_tool_info['formbit'];
            if (file_exists($formbit_file_name)) {

              include_once $formbit_file_name;
              // Add configuration form element in the formbit position.
              call_user_func_array($development_tool_key . "_build_formbit",
                [&$form['development_tools'][$development_tool_key . '_config'],
                  &$form_state,
                  &$install_state,
                ]
              );
            }
          }
        }
      }
    }

    $form['actions'] = [
      'continue' => [
        '#type' => 'submit',
        '#value' => $this->t('Continue'),
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

    // Development Tools.
    $developmentTools = ConfigBit::getList('configbit/development.tools.varbase.bit.yml', 'show_development_tools', TRUE, 'dependencies', 'profile', 'varbase');
    if (count($developmentTools)) {
      $development_tools_values = [];

      foreach ($developmentTools as $development_tool_key => $development_tool_info) {

        // If form state has got value for this development tool.
        if ($form_state->hasValue($development_tool_key)) {
          $development_tools_values[$development_tool_key] = $form_state->getValue($development_tool_key);
        }

        if (isset($development_tool_info['config_form']) &&
                  $development_tool_info['config_form'] == TRUE) {
          $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $development_tool_info['formbit'];
          if (file_exists($formbit_file_name)) {

            include_once $formbit_file_name;
            $development_tools_editable_configs = call_user_func_array($development_tool_key . "_get_editable_config_names", []);

            if (count($development_tools_editable_configs)) {
              foreach ($development_tools_editable_configs as $development_tools_editable_config_key => $development_tools_editable_config) {
                foreach ($development_tools_editable_config as $development_tools_config_item_key => $development_tools_config_item_value) {
                  if ($form_state->hasValue($development_tools_config_item_key)) {
                    $development_tools_editable_configs[$development_tools_editable_config_key][$development_tools_config_item_key] = $form_state->getValue($development_tools_config_item_key);
                  }
                }
              }
            }

            $GLOBALS['install_state']['varbase']['development_tools_configs'] = $development_tools_editable_configs;
          }
        }
      }

      $GLOBALS['install_state']['varbase']['development_tools_values'] = $development_tools_values;
    }
  }

}
