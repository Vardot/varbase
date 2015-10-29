<?php
/**
 * @file
 * varbase_fpp.features.field_base.inc
 */

/**
 * Implements hook_field_default_field_bases().
 */
function varbase_fpp_field_default_field_bases() {
  $field_bases = array();

  // Exported field_base: 'field_fpp_slides'.
  $field_bases['field_fpp_slides'] = array(
    'active' => 1,
    'cardinality' => -1,
    'deleted' => 0,
    'entity_types' => array(),
    'field_name' => 'field_fpp_slides',
    'indexes' => array(
      'revision_id' => array(
        0 => 'revision_id',
      ),
    ),
    'locked' => 0,
    'module' => 'field_collection',
    'settings' => array(
      'hide_blank_items' => 1,
      'path' => '',
    ),
    'translatable' => 0,
    'type' => 'field_collection',
  );

  return $field_bases;
}
