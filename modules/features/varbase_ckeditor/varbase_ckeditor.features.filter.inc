<?php
/**
 * @file
 * varbase_ckeditor.features.filter.inc
 */

/**
 * Implements hook_filter_default_formats().
 */
function varbase_ckeditor_filter_default_formats() {
  $formats = array();

  // Exported format: Raw HTML.
  $formats['raw_html'] = array(
    'format' => 'raw_html',
    'name' => 'Raw HTML',
    'cache' => '1',
    'status' => '1',
    'weight' => '-8',
    'filters' => array(
      'filter_url' => array(
        'weight' => '0',
        'status' => '1',
        'settings' => array(
          'filter_url_length' => '72',
        ),
      ),
      'filter_htmlcorrector' => array(
        'weight' => '10',
        'status' => '1',
        'settings' => array(),
      ),
    ),
  );

  // Exported format: Visual editor.
  $formats['visual_editor'] = array(
    'format' => 'visual_editor',
    'name' => 'Visual editor',
    'cache' => '1',
    'status' => '1',
    'weight' => '-9',
    'filters' => array(
      'filter_url' => array(
        'weight' => '0',
        'status' => '1',
        'settings' => array(
          'filter_url_length' => '72',
        ),
      ),
      'media_filter' => array(
        'weight' => '2',
        'status' => '1',
        'settings' => array(),
      ),
      'filter_htmlcorrector' => array(
        'weight' => '10',
        'status' => '1',
        'settings' => array(),
      ),
    ),
  );

  return $formats;
}
