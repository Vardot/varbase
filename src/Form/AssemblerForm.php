<?php

namespace Drupal\varbase\Form;

use Drupal\Core\Extension\InfoParserInterface;
use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\StringTranslation\TranslationInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Drupal\varbase\Config\ConfigBit;

/**
 * Defines form for selecting extra components for the assembler to install.
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
    return 'varbase_extra_components';
  }

  /**
   * {@inheritdoc}
   *
   * @return array
   *   Extra compoments modules.
   */
  public function buildForm(array $form, FormStateInterface $form_state, array &$install_state = NULL) {
    $form['#title'] = $this->t('Extra components');
    $form['extra_components_introduction'] = [
      '#weight' => -1,
      '#prefix' => '<p>',
      '#markup' => $this->t("Install additional ready-to-use features in your site."),
      '#suffix' => '</p>',
    ];

    // Extra Features.
    $extraFeatures = ConfigBit::getList('configbit/extra.components.varbase.bit.yml', 'show_extra_components', TRUE, 'dependencies', 'profile', 'varbase');
    if (count($extraFeatures)) {

      $form['extra_features'] = [
        '#type' => 'fieldset',
        '#title' => $this->t('Site features'),
      ];

      foreach ($extraFeatures as $extra_feature_key => $extra_feature_info) {

        $checkbox_title = '';
        $checkbox_description = '';
        $checkbox_selected = FALSE;

        if (isset($extra_feature_info['title'])) {
          $checkbox_title = $extra_feature_info['title'];
        }

        if (isset($extra_feature_info['description'])) {
          $checkbox_description = $extra_feature_info['description'];
        }

        if (isset($extra_feature_info['selected'])) {
          $checkbox_selected = $extra_feature_info['selected'];
        }

        $form['extra_features'][$extra_feature_key] = [
          '#type' => 'checkbox',
          '#title' => $checkbox_title,
          '#description' => $checkbox_description,
          '#default_value' => $checkbox_selected,
        ];

        if (isset($extra_feature_info['config_form']) &&
                   $extra_feature_info['config_form'] == TRUE) {
          $form['extra_features'][$extra_feature_key . '_config'] = [
            '#type' => 'fieldset',
            '#title' => $checkbox_title,
            '#states' => [
              'visible' => [
                ':input[name="' . $extra_feature_key . '"]' => ['checked' => TRUE],
              ],
              'invisible' => [
                ':input[name="' . $extra_feature_key . '"]' => ['checked' => FALSE],
              ],
            ],
          ];

          if (isset($extra_feature_info['formbit'])) {
            $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $extra_feature_info['formbit'];
            if (file_exists($formbit_file_name)) {

              include_once $formbit_file_name;
              // Add configuration form element in the formbit position.
              call_user_func_array($extra_feature_key . "_build_formbit",
                [&$form['extra_features'][$extra_feature_key . '_config'],
                  &$form_state,
                  &$install_state,
                ]
              );
            }
          }

        }

      }
    }

    // Demo Content.
    $demoContent = ConfigBit::getList('configbit/demo.content.varbase.bit.yml', 'show_demo', TRUE, 'dependencies', 'profile', 'varbase');
    if (count($demoContent) > 0) {
      $form['demo_content'] = [
        '#type' => 'fieldset',
        '#title' => $this->t('Demo content'),
      ];

      foreach ($demoContent as $demo_content_key => $demo_content_info) {

        $checkbox_title = '';
        $checkbox_description = '';
        $checkbox_selected = FALSE;

        if (isset($demo_content_info['title'])) {
          $checkbox_title = $demo_content_info['title'];
        }

        if (isset($demo_content_info['description'])) {
          $checkbox_description = $demo_content_info['description'];
        }

        if (isset($demo_content_info['selected'])) {
          $checkbox_selected = $demo_content_info['selected'];
        }

        $form['demo_content'][$demo_content_key] = [
          '#type' => 'checkbox',
          '#title' => $checkbox_title,
          '#description' => $checkbox_description,
          '#default_value' => $checkbox_selected,
        ];

        if (isset($demo_content_info['config_form']) &&
                  $demo_content_info['config_form'] == TRUE) {
          $form['demo_content'][$demo_content_key . '_config'] = [
            '#type' => 'fieldset',
            '#title' => $checkbox_title,
            '#states' => [
              'visible' => [
                ':input[name="' . $demo_content_key . '"]' => ['checked' => TRUE],
              ],
              'invisible' => [
                ':input[name="' . $demo_content_key . '"]' => ['checked' => FALSE],
              ],
            ],
          ];

          if (isset($demo_content_info['formbit'])) {
            $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $demo_content_info['formbit'];
            if (file_exists($formbit_file_name)) {

              include_once $formbit_file_name;
              // Add configuration form element in the formbit position.
              call_user_func_array($demo_content_key . "_build_formbit",
                [&$form['demo_content'][$demo_content_key . '_config'],
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
        '#value' => $this->t('Assemble and install'),
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

    // Extra Features.
    $extraFeatures = ConfigBit::getList('configbit/extra.components.varbase.bit.yml', 'show_extra_components', TRUE, 'dependencies', 'profile', 'varbase');
    if (count($extraFeatures)) {
      $extra_features_values = [];

      foreach ($extraFeatures as $extra_feature_key => $extra_feature_info) {

        // If form state has got value for this extra feature.
        if ($form_state->hasValue($extra_feature_key)) {
          $extra_features_values[$extra_feature_key] = $form_state->getValue($extra_feature_key);
        }

        if (isset($extra_feature_info['config_form']) &&
                  $extra_feature_info['config_form'] == TRUE) {
          $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $extra_feature_info['formbit'];
          if (file_exists($formbit_file_name)) {

            include_once $formbit_file_name;
            $extra_features_editable_configs = call_user_func_array($extra_feature_key . "_get_editable_config_names", []);

            if (count($extra_features_editable_configs)) {
              foreach ($extra_features_editable_configs as $extra_features_editable_config_key => $extra_features_editable_config) {
                foreach ($extra_features_editable_config as $extra_features_config_item_key => $extra_features_config_item_value) {
                  if ($form_state->hasValue($extra_features_config_item_key)) {
                    $extra_features_editable_configs[$extra_features_editable_config_key][$extra_features_config_item_key] = $form_state->getValue($extra_features_config_item_key);
                  }
                }
              }
            }

            $GLOBALS['install_state']['varbase']['extra_features_configs'] = $extra_features_editable_configs;
          }
        }
      }

      $GLOBALS['install_state']['varbase']['extra_features_values'] = $extra_features_values;
    }

    // Demo Content.
    $demoContent = ConfigBit::getList('configbit/demo.content.varbase.bit.yml', 'show_demo', TRUE, 'dependencies', 'profile', 'varbase');
    if (count($demoContent)) {
      $demo_content_values = [];

      foreach ($demoContent as $demo_content_key => $demo_content_info) {

        // If form state has got value for this demo content.
        if ($form_state->hasValue($demo_content_key)) {
          $demo_content_values[$demo_content_key] = $form_state->getValue($demo_content_key);
        }

        if (isset($demo_content_info['config_form']) &&
                  $demo_content_info['config_form'] == TRUE) {
          $formbit_file_name = drupal_get_path('profile', 'varbase') . '/' . $demo_content_info['formbit'];
          if (file_exists($formbit_file_name)) {

            include_once $formbit_file_name;
            $demo_content_editable_configs = call_user_func_array($demo_content_key . "_get_editable_config_names", []);

            if (count($demo_content_editable_configs)) {
              foreach ($demo_content_editable_configs as $demo_content_editable_config_key => $demo_content_editable_config) {
                foreach ($demo_content_editable_config as $demo_content_config_item_key => $demo_content_config_item_value) {
                  if ($form_state->hasValue($demo_content_config_item_key)) {
                    $demo_content_editable_configs[$demo_content_editable_config_key][$demo_content_config_item_key] = $form_state->getValue($demo_content_config_item_key);
                  }
                }
              }
            }

            $GLOBALS['install_state']['varbase']['demo_content_configs'] = $demo_content_editable_configs;
          }
        }
      }

      $GLOBALS['install_state']['varbase']['demo_content_values'] = $demo_content_values;
    }
  }

}
