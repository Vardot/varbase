<?php

/**
 * Formats a link field widget.
 */
function vartheme2_link_field($vars) {
  drupal_add_css(drupal_get_path('module', 'link') . '/link.css');
  $element = $vars['element'];
  // Prefix single value link fields with the name of the field.
  if (empty($element['#field']['multiple'])) {
    if (isset($element['url']) && !isset($element['title'])) {
      $element['url']['#title_display'] = 'invisible';
    }
  }

  $output = '';
  $output .= '<div class="link-field-subrow clearfix">';
  if (isset($element['title'])) {
    $output .= '<div class="link-field-title link-field-column">' . drupal_render($element['title']) . '</div>';
  }
  $output .= '<div class="link-field-url' . (isset($element['title']) ? ' link-field-column' : '') . '">' . drupal_render($element['url']) . '</div>';
  $output .= '</div>';
  if (!empty($element['attributes']['target'])) {
    $output .= '<div class="link-attributes">' . drupal_render($element['attributes']['target']) . '</div>';
  }
  if (!empty($element['attributes']['title'])) {
    $output .= '<div class="link-attributes">' . drupal_render($element['attributes']['title']) . '</div>';
  }
  return $output;
}

function vartheme2_image_widget($variables) {
  $element = $variables['element'];
  $output = '';
  $output .= '<div class="image-widget form-managed-file clearfix">';

  if (isset($element['preview'])) {
    $output .= '<div class="image-preview">';
    $output .= drupal_render($element['preview']);
    $output .= '</div>';
  }

  $output .= '<div class="image-widget-data">';
  if ($element['fid']['#value'] != 0) {
    $element['filename']['#markup'] .= ' <span class="file-size">(' . format_size($element['#file']->filesize) . ')</span> ';
  }
  $output .= drupal_render_children($element);
  $output .= '</div>';
  $output .= '</div>';

  return $output;
}