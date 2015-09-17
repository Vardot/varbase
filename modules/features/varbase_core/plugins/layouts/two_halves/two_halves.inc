<?php

/**
 * Implements hook_panels_layouts().
 */
// Plugin definition
$plugin = array(
    'title' => t('Two halves (50% / 50%)'),
    'category' => t('Basic layouts'),
    'icon' => 'two_halves.png',
    'theme' => 'two_halves',
    'admin css' => '../varbase-layouts-admin.css',
    'regions' => array(
      'top' => t('Top'),
      'left' => t('Left'),
      'right' => t('Right'),
      'bottom' => t('Bottom'),
    ),
);
