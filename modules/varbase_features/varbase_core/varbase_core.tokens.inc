<?php

use Drupal\Core\Render\BubbleableMetadata;

/**
 * Implements hook_token_info().
 */
function varbase_core_token_info() {
  // Current theme token.
  $info['types']['current-theme'] = array(
    'name' => t('Current theme'),
    'description' => t('Tokens related to the current theme.'),
  );
  $info['tokens']['current-theme']['path'] = array(
    'name' => t('Path'),
    'description' => t('The path of the current theme.'),
  );

  return $info;
}

/**
 * Implements hook_tokens().
 */
function varbase_core_tokens($type, $tokens, array $data, array $options, BubbleableMetadata $bubbleable_metadata) {
  $replacements = array();
  $language_manager = \Drupal::languageManager();
  $url_options = array('absolute' => TRUE);
  if (isset($options['langcode'])) {
    $url_options['language'] = $language_manager->getLanguage($options['langcode']);
    $langcode = $options['langcode'];
  }
  else {
    $langcode = $language_manager->getCurrentLanguage()->getId();
  }

  if ($type == 'current-theme') {
    foreach ($tokens as $name => $original) {
      switch ($name) {
        case 'path':
          $replacements[$original] = \Drupal::theme()->getActiveTheme()->getPath();
          break;
      }
    }
  }
  return $replacements;
}
