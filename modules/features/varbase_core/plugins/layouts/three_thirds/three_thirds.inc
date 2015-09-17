<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
    'title' => t('Two half (33% / 33% / 33%)'),
    'category' => t('Basic layouts'),
    'icon' => 'three_thirds.png',
    'theme' => 'three_thirds',
    'admin css' => '../varbase-layouts-admin.css',
    'regions' => array(
      'top' => t('Top'),
      'left' => t('Left'),
      'center' => t('Center'),
      'right' => t('Right'),
      'bottom' => t('Bottom'),
    ),
);
