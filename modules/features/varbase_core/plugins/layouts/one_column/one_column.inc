<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
  'title' => t('One column (100%)'),
  'category' => t('Basic layouts'),
  'icon' => 'one_column.png',
  'theme' => 'one_column',
  'admin css' => '../varbase-layouts-admin.css',
  'regions' => array(
    'center' => t('Content'),
  ),
);
