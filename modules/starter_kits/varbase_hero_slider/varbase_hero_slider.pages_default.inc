<?php
/**
 * @file
 * varbase_hero_slider.pages_default.inc
 */

/**
 * Implements hook_default_page_manager_handlers().
 */
function varbase_hero_slider_default_page_manager_handlers() {
  $export = array();

  $handler = new stdClass();
  $handler->disabled = FALSE; /* Edit this to true to make a default handler disabled initially */
  $handler->api_version = 1;
  $handler->name = 'node_view__varbase_hero_slider';
  $handler->task = 'node_view';
  $handler->subtask = '';
  $handler->handler = 'http_response';
  $handler->weight = -99;
  $handler->conf = array(
    'title' => 'Hero slider',
    'contexts' => array(),
    'relationships' => array(),
    'code' => '301',
    'destination' => 'node/%node:nid/edit',
    'name' => 'varbase_hero_slider',
    'access' => array(
      'plugins' => array(
        0 => array(
          'name' => 'node_type',
          'settings' => array(
            'type' => array(
              'varbase_hero_slider' => 'varbase_hero_slider',
            ),
          ),
          'context' => 'argument_entity_id:node_1',
          'not' => FALSE,
        ),
      ),
      'logic' => 'and',
    ),
  );
  $export['node_view__varbase_hero_slider'] = $handler;

  return $export;
}
