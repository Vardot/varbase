<?php
/**
 * @file
 * Code for the Varbase Support support functions.
 */

/**
 * Render a date field.
 *
 * see ds_render_date_field().
 */
function _varbase_support_render_date_field($field) {
  $date_format = str_replace('ds_post_date_', '', $field['formatter']);
  $date = format_date($field['entity']->{$field['properties']['entity_render_key']}, $date_format);
  $isodate = format_date($field['entity']->{$field['properties']['entity_render_key']}, 'custom', 'c');
  $output = theme('varbase_time', array('date' => $date, 'isodate' => $isodate));

  return ds_edit_support($field['properties']['entity_render_key'], $output, $field);
}
