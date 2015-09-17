<?php
/**
 * @file
 * varbase_fpp.features.inc
 */

/**
 * Implements hook_views_api().
 */
function varbase_fpp_views_api($module = NULL, $api = NULL) {
  return array("api" => "3.0");
}

/**
 * Implements hook_image_default_styles().
 */
function varbase_fpp_image_default_styles() {
  $styles = array();

  // Exported image style: flexslider_default.
  $styles['flexslider_default'] = array(
    'label' => 'Varbase FPP Default slider',
    'effects' => array(
      1 => array(
        'name' => 'epsacrop_crop',
        'data' => array(
          'width' => 850,
          'height' => 400,
          'anchor' => 'center-center',
          'jcrop_settings' => array(
            'aspect_ratio' => '',
            'bgcolor' => 'black',
            'bgopacity' => 0.6,
            'fallback' => 1,
          ),
        ),
        'weight' => 1,
      ),
      2 => array(
        'name' => 'image_scale_and_crop',
        'data' => array(
          'width' => 850,
          'height' => 400,
        ),
        'weight' => 2,
      ),
    ),
  );

  return $styles;
}
