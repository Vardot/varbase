<?php
/**
 * @file
 * varbase_security.strongarm.inc
 */

/**
 * Implements hook_strongarm().
 */
function varbase_security_strongarm() {
  $export = array();

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'genpass_algorithm';
  $strongarm->value = 'genpass';
  $export['genpass_algorithm'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'genpass_display';
  $strongarm->value = '0';
  $export['genpass_display'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'genpass_entropy';
  $strongarm->value = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789!#$%&()*+,-./:;<=>?@[]^_{|}~';
  $export['genpass_entropy'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'genpass_length';
  $strongarm->value = '8';
  $export['genpass_length'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'genpass_mode';
  $strongarm->value = '2';
  $export['genpass_mode'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'pathauto_user_pattern';
  $strongarm->value = '';
  $export['pathauto_user_pattern'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'seckit_clickjacking';
  $strongarm->value = array(
    'x_frame' => '1',
    'x_frame_allow_from' => '',
    'js_css_noscript' => 1,
    'noscript_message' => 'Sorry, you need to enable JavaScript to visit this website.',
  );
  $export['seckit_clickjacking'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'seckit_csrf';
  $strongarm->value = array(
    'origin' => 1,
    'origin_whitelist' => '',
  );
  $export['seckit_csrf'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'seckit_ssl';
  $strongarm->value = array(
    'hsts' => 0,
    'hsts_max_age' => 1000,
    'hsts_subdomains' => 0,
  );
  $export['seckit_ssl'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'seckit_various';
  $strongarm->value = array(
    'from_origin' => 0,
    'from_origin_destination' => 'same',
  );
  $export['seckit_various'] = $strongarm;

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'seckit_xss';
  $strongarm->value = array(
    'csp' => array(
      'checkbox' => 0,
      'report-only' => 0,
      'default-src' => '\'self\'',
      'script-src' => '',
      'object-src' => '',
      'style-src' => '',
      'img-src' => '',
      'media-src' => '',
      'frame-src' => '',
      'font-src' => '',
      'connect-src' => '',
      'report-uri' => 'admin/config/system/seckit/csp-report',
      'policy-uri' => '',
    ),
    'x_xss' => array(
      'select' => '2',
    ),
    'x_content_type' => array(
      'checkbox' => 1,
    ),
  );
  $export['seckit_xss'] = $strongarm;

  return $export;
}
