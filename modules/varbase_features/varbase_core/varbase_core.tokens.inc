<?php

/**
 * @file
 * Contains varbase_core.tokens.inc.
 */

 /**
  * To have all varbase core general and global tokens.
  */

use Drupal\Core\Render\BubbleableMetadata;

/**
 * Implements hook_token_info().
 */
function varbase_core_token_info() {
  // Default theme token.
  $info['types']['default-active-theme'] = array(
    'name' => t('Default theme'),
    'description' => t('Tokens related to the Default theme.'),
  );
  $info['tokens']['default-active-theme']['path'] = array(
    'name' => t('Path'),
    'description' => t('The path of the Default theme.'),
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

  if ($type == 'default-active-theme') {
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
