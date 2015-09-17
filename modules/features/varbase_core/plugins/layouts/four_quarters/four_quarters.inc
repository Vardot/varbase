<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
    'title' => t('Four quarters'),
    'category' => t('Advanced layouts'),
    'icon' => 'four_quarters.png',
    'theme' => 'four_quarters',
    'admin css' => '../varbase-layouts-admin.css',
    'regions' => array(
      'top' => t('top'),
      'col_1' => t('First column'),
      'col_2' => t('Second column'),
      'col_3' => t('Third column'),
      'col_4' => t('Fourth column'),
      'bottom' => t('bottom'),
    ),
);
