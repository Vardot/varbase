<?php
/**
 * @file
 * varbase_hero_slider.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function varbase_hero_slider_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "page_manager" && $api == "pages_default") {
    return array("version" => "1");
  }
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_views_api().
 */
function varbase_hero_slider_views_api($module = NULL, $api = NULL) {
  return array("api" => "3.0");
}

/**
 * Implements hook_fe_nodequeue_export_fields().
 */
function varbase_hero_slider_fe_nodequeue_export_fields() {
  $nodequeues = array();

  // Exported nodequeues: varbase_featured_homepage_slider
  $nodequeues['varbase_featured_homepage_slider'] = array(
    'name' => 'varbase_featured_homepage_slider',
    'title' => 'Featured Homepage slider',
    'subqueue_title' => '',
    'size' => 0,
    'link' => '',
    'link_remove' => '',
    'owner' => 'nodequeue',
    'show_in_ui' => 1,
    'show_in_tab' => 1,
    'show_in_links' => 0,
    'reference' => 0,
    'reverse' => 0,
    'insert_at_front' => 0,
    'i18n' => 0,
    'subqueues' => 1,
    'types' => array(
      0 => 'varbase_hero_slider',
    ),
    'roles' => array(),
    'count' => 0,
  );

  return $nodequeues;
}

/**
 * Implements hook_node_info().
 */
function varbase_hero_slider_node_info() {
  $items = array(
    'varbase_hero_slider' => array(
      'name' => t('Hero slider'),
      'base' => 'node_content',
      'description' => t('Use Hero slider to add slides. So that the list of slides will show up at the landing page.'),
      'has_title' => '1',
      'title_label' => t('Slide title'),
      'help' => '',
    ),
  );
  drupal_alter('node_info', $items);
  return $items;
}
