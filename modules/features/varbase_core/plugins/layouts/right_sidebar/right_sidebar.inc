<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
  'title' => t('Right sidebar'),
  'category' => t('Basic layouts'),
  'icon' => 'right_sidebar.png',
  'theme' => 'right_sidebar',
  'admin css' => '../varbase-layouts-admin.css',
  'regions' => array(
    'top' => t('Top'),
    'center' => t('Content'),
    'right' => t('Right Sidebar'),
    'bottom' => t('Bottom'),
  ),
);
