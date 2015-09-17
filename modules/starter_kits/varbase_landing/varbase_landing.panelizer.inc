<?php
/**
 * @file
 * varbase_landing.panelizer.inc
 */

/**
 * Implements hook_panelizer_defaults().
 */
function varbase_landing_panelizer_defaults() {
  $export = array();

  $panelizer = new stdClass();
  $panelizer->disabled = FALSE; /* Edit this to true to make a default panelizer disabled initially */
  $panelizer->api_version = 1;
  $panelizer->name = 'node:landing_page:default';
  $panelizer->title = 'Default';
  $panelizer->panelizer_type = 'node';
  $panelizer->panelizer_key = 'landing_page';
  $panelizer->no_blocks = FALSE;
  $panelizer->css_id = '';
  $panelizer->css = '';
  $panelizer->pipeline = 'ipe';
  $panelizer->contexts = array();
  $panelizer->relationships = array();
  $panelizer->access = array();
  $panelizer->view_mode = 'page_manager';
  $panelizer->css_class = '';
  $panelizer->title_element = 'H2';
  $panelizer->link_to_entity = TRUE;
  $panelizer->extra = array();
  $display = new panels_display();
  $display->layout = 'flexible';
  $display->layout_settings = array();
  $display->panel_settings = array();
  $display->cache = array();
  $display->title = '%node:title';
  $display->uuid = '688f51ea-0477-4fbd-a7d3-5984d05cb173';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass();
    $pane->pid = 'new-a6befe2d-3a14-438f-9a73-df59d44d6f02';
    $pane->panel = 'center';
    $pane->type = 'node_links';
    $pane->subtype = 'node_links';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => FALSE,
      'override_title_text' => '',
      'build_mode' => 'page_manager',
      'identifier' => '',
      'link' => TRUE,
      'context' => 'panelizer',
    );
    $pane->cache = array();
    $pane->style = array();
    $pane->css = array(
      'css_class' => 'link-wrapper',
    );
    $pane->extras = array();
    $pane->position = 0;
    $pane->locks = array();
    $pane->uuid = 'a6befe2d-3a14-438f-9a73-df59d44d6f02';
    $display->content['new-a6befe2d-3a14-438f-9a73-df59d44d6f02'] = $pane;
    $display->panels['center'][0] = 'new-a6befe2d-3a14-438f-9a73-df59d44d6f02';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = 'new-a6befe2d-3a14-438f-9a73-df59d44d6f02';
  $panelizer->display = $display;
  $export['node:landing_page:default'] = $panelizer;

  return $export;
}
