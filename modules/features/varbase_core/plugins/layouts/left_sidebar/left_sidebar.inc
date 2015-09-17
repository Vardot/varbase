<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
  'title' => t('Left sidebar'),
  'category' => t('Basic layouts'),
  'icon' => 'left_sidebar.png',
  'theme' => 'left_sidebar',
  'admin css' => '../varbase-layouts-admin.css',
  'regions' => array(
    'top' => t('Top'),
    'left' => t('Left Sidebar'),
    'center' => t('Content'),
    'bottom' => t('Bottom'),
  ),
);
