<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
    'title' => t('Upstairs'),
    'category' => t('Advanced layouts'),
    'icon' => 'upstairs.png',
    'theme' => 'upstairs',
    'admin css' => '../uber-publisher-core-admin.css',
    'regions' => array(
      'top' => t('Top'),
      'first_step_left' => t('First step left'),
      'first_step_right' => t('First step right'),
      'second_step_left' => t('Second step left'),
      'second_step_right' => t('Second step right'),
      'third_step_left' => t('Third step left'),
      'third_step_right' => t('Third step right'),
      'fourth_step_left' => t('Fourth step left'),
      'fourth_step_right' => t('Fourth step right'),
      'fifth_step_left' => t('Fifth step left'),
      'fifth_step_right' => t('Fifth step right'),
      'bottom' => t('Bottom'),
    ),
);
