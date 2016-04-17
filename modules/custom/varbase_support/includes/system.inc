<?php

/**
 * Implements hook_date_format_types().
 */
function varbase_support_date_format_types() {
  return array(
    'varbase_date_and_time' => t('Date & time'),
    'varbase_files_date' => t('Files date'),
    'varbase_time' => t('Time'),
    'varbase_iso_8601' => t('ISO 8601 date'),
    'varbase_rfc822' => t('RFC822'),
  );
}

/**
 * Implements hook_date_formats().
 */
function varbase_support_date_formats() {
  return array(
    array(
      'type' => 'varbase_time',
      'format' => 'h:i a',
      'locales' => array(),
    ),
    array(
      'type' => 'short',
      'format' => 'd/M/Y',
      'locales' => array(),
    ),
    array(
      'type' => 'short',
      'format' => 'M j, Y',
      'locales' => array(),
    ),
    array(
      'type' => 'short',
      'format' => 'j F, Y',
      'locales' => array(),
    ),
    array(
      'type' => 'varbase_files_date',
      'format' => 'Y-m-d-H-i',
      'locales' => array(),
    ),
    array(
      'type' => 'varbase_iso_8601',
      'format' => 'c',
      'locales' => array(),
    ),
    array(
      'type' => 'varbase_rfc822',
      'format' => 'r',
      'locales' => array(),
    ),
  );
}
