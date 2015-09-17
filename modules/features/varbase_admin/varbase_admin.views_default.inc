<?php
/**
 * @file
 * varbase_admin.views_default.inc
 */

/**
 * Implements hook_views_default_views().
 */
function varbase_admin_views_default_views() {
  $export = array();

  $view = new view();
  $view->name = 'admin_views_fpp';
  $view->description = 'Find and manage Fieldable Panels Panes.';
  $view->tag = 'admin';
  $view->base_table = 'fieldable_panels_panes';
  $view->human_name = 'Administration: Fieldable Panels Panes';
  $view->core = 7;
  $view->api_version = '3.0';
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */

  /* Display: Master */
  $handler = $view->new_display('default', 'Master', 'default');
  $handler->display->display_options['css_class'] = 'admin-views-view';
  $handler->display->display_options['hide_admin_links'] = TRUE;
  $handler->display->display_options['use_more_always'] = FALSE;
  $handler->display->display_options['access']['type'] = 'perm';
  $handler->display->display_options['access']['perm'] = 'access fieldable pane overview';
  $handler->display->display_options['cache']['type'] = 'none';
  $handler->display->display_options['query']['type'] = 'views_query';
  $handler->display->display_options['query']['options']['distinct'] = TRUE;
  $handler->display->display_options['exposed_form']['type'] = 'basic';
  $handler->display->display_options['exposed_form']['options']['reset_button'] = TRUE;
  $handler->display->display_options['pager']['type'] = 'full';
  $handler->display->display_options['pager']['options']['items_per_page'] = '50';
  $handler->display->display_options['pager']['options']['offset'] = '0';
  $handler->display->display_options['pager']['options']['id'] = '0';
  $handler->display->display_options['pager']['options']['quantity'] = '9';
  $handler->display->display_options['style_plugin'] = 'default';
  $handler->display->display_options['row_plugin'] = 'fields';
  /* No results behavior: Global: Unfiltered text */
  $handler->display->display_options['empty']['area_text_custom']['id'] = 'area_text_custom';
  $handler->display->display_options['empty']['area_text_custom']['table'] = 'views';
  $handler->display->display_options['empty']['area_text_custom']['field'] = 'area_text_custom';
  $handler->display->display_options['empty']['area_text_custom']['empty'] = TRUE;
  $handler->display->display_options['empty']['area_text_custom']['content'] = 'No Fieldable Panes available.';
  /* Field: Bulk operations: Fieldable pane */
  $handler->display->display_options['fields']['views_bulk_operations']['id'] = 'views_bulk_operations';
  $handler->display->display_options['fields']['views_bulk_operations']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['views_bulk_operations']['field'] = 'views_bulk_operations';
  $handler->display->display_options['fields']['views_bulk_operations']['label'] = '';
  $handler->display->display_options['fields']['views_bulk_operations']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['views_bulk_operations']['vbo_settings']['display_type'] = '0';
  $handler->display->display_options['fields']['views_bulk_operations']['vbo_settings']['enable_select_all_pages'] = 1;
  $handler->display->display_options['fields']['views_bulk_operations']['vbo_settings']['force_single'] = 0;
  $handler->display->display_options['fields']['views_bulk_operations']['vbo_settings']['entity_load_capacity'] = '10';
  $handler->display->display_options['fields']['views_bulk_operations']['vbo_operations'] = array(
    'action::views_bulk_operations_delete_item' => array(
      'selected' => 1,
      'postpone_processing' => 0,
      'skip_confirmation' => 1,
      'override_label' => 1,
      'label' => 'Delete',
    ),
    'action::views_bulk_operations_modify_action' => array(
      'selected' => 1,
      'postpone_processing' => 0,
      'skip_confirmation' => 1,
      'override_label' => 1,
      'label' => 'Change value',
      'settings' => array(
        'show_all_tokens' => 1,
        'display_values' => array(
          '_all_' => '_all_',
        ),
      ),
    ),
  );
  /* Field: Fieldable pane: Title */
  $handler->display->display_options['fields']['title']['id'] = 'title';
  $handler->display->display_options['fields']['title']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['title']['field'] = 'title';
  $handler->display->display_options['fields']['title']['label'] = '';
  $handler->display->display_options['fields']['title']['exclude'] = TRUE;
  $handler->display->display_options['fields']['title']['element_label_colon'] = FALSE;
  $handler->display->display_options['fields']['title']['empty'] = '&lt;No Title&gt;';
  /* Field: Fieldable pane: Administrative link */
  $handler->display->display_options['fields']['view_entity']['id'] = 'view_entity';
  $handler->display->display_options['fields']['view_entity']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['view_entity']['field'] = 'view_entity';
  $handler->display->display_options['fields']['view_entity']['label'] = 'Title';
  $handler->display->display_options['fields']['view_entity']['alter']['alter_text'] = TRUE;
  $handler->display->display_options['fields']['view_entity']['alter']['text'] = '[title]';
  /* Field: Fieldable pane: Reusable */
  $handler->display->display_options['fields']['reusable']['id'] = 'reusable';
  $handler->display->display_options['fields']['reusable']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['reusable']['field'] = 'reusable';
  $handler->display->display_options['fields']['reusable']['not'] = 0;
  /* Field: Fieldable pane: Administrative title */
  $handler->display->display_options['fields']['admin_title']['id'] = 'admin_title';
  $handler->display->display_options['fields']['admin_title']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['admin_title']['field'] = 'admin_title';
  /* Field: Fieldable pane: Administrative category */
  $handler->display->display_options['fields']['category']['id'] = 'category';
  $handler->display->display_options['fields']['category']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['category']['field'] = 'category';
  /* Field: Fieldable pane: Administrative description */
  $handler->display->display_options['fields']['admin_description']['id'] = 'admin_description';
  $handler->display->display_options['fields']['admin_description']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['admin_description']['field'] = 'admin_description';
  /* Field: Fieldable pane: changed date */
  $handler->display->display_options['fields']['changed']['id'] = 'changed';
  $handler->display->display_options['fields']['changed']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['changed']['field'] = 'changed';
  $handler->display->display_options['fields']['changed']['date_format'] = 'long';
  $handler->display->display_options['fields']['changed']['second_date_format'] = 'long';
  /* Field: Fieldable pane: Administrative edit link */
  $handler->display->display_options['fields']['edit_entity']['id'] = 'edit_entity';
  $handler->display->display_options['fields']['edit_entity']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['edit_entity']['field'] = 'edit_entity';
  $handler->display->display_options['fields']['edit_entity']['label'] = 'Operations';
  /* Field: Fieldable pane: Administrative delete link */
  $handler->display->display_options['fields']['delete_entity']['id'] = 'delete_entity';
  $handler->display->display_options['fields']['delete_entity']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['fields']['delete_entity']['field'] = 'delete_entity';
  $handler->display->display_options['fields']['delete_entity']['label'] = '';
  $handler->display->display_options['fields']['delete_entity']['element_label_colon'] = FALSE;
  /* Filter criterion: Global: Combine fields filter */
  $handler->display->display_options['filters']['combine']['id'] = 'combine';
  $handler->display->display_options['filters']['combine']['table'] = 'views';
  $handler->display->display_options['filters']['combine']['field'] = 'combine';
  $handler->display->display_options['filters']['combine']['operator'] = 'contains';
  $handler->display->display_options['filters']['combine']['group'] = 1;
  $handler->display->display_options['filters']['combine']['exposed'] = TRUE;
  $handler->display->display_options['filters']['combine']['expose']['operator_id'] = 'combine_op';
  $handler->display->display_options['filters']['combine']['expose']['label'] = 'Search tile and description';
  $handler->display->display_options['filters']['combine']['expose']['operator'] = 'combine_op';
  $handler->display->display_options['filters']['combine']['expose']['identifier'] = 'combine';
  $handler->display->display_options['filters']['combine']['expose']['remember'] = TRUE;
  $handler->display->display_options['filters']['combine']['fields'] = array(
    'view_entity' => 'view_entity',
    'title' => 'title',
    'category' => 'category',
    'admin_description' => 'admin_description',
  );
  /* Filter criterion: Fieldable pane: Bundle */
  $handler->display->display_options['filters']['bundle']['id'] = 'bundle';
  $handler->display->display_options['filters']['bundle']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['filters']['bundle']['field'] = 'bundle';
  $handler->display->display_options['filters']['bundle']['group'] = 1;
  $handler->display->display_options['filters']['bundle']['exposed'] = TRUE;
  $handler->display->display_options['filters']['bundle']['expose']['operator_id'] = 'bundle_op';
  $handler->display->display_options['filters']['bundle']['expose']['label'] = 'Type';
  $handler->display->display_options['filters']['bundle']['expose']['operator'] = 'bundle_op';
  $handler->display->display_options['filters']['bundle']['expose']['identifier'] = 'bundle';
  $handler->display->display_options['filters']['bundle']['expose']['remember'] = TRUE;
  /* Filter criterion: Fieldable pane: Reusable */
  $handler->display->display_options['filters']['reusable']['id'] = 'reusable';
  $handler->display->display_options['filters']['reusable']['table'] = 'fieldable_panels_panes';
  $handler->display->display_options['filters']['reusable']['field'] = 'reusable';
  $handler->display->display_options['filters']['reusable']['value'] = 'All';
  $handler->display->display_options['filters']['reusable']['group'] = 1;
  $handler->display->display_options['filters']['reusable']['exposed'] = TRUE;
  $handler->display->display_options['filters']['reusable']['expose']['operator_id'] = '';
  $handler->display->display_options['filters']['reusable']['expose']['label'] = 'Reusable';
  $handler->display->display_options['filters']['reusable']['expose']['operator'] = 'reusable_op';
  $handler->display->display_options['filters']['reusable']['expose']['identifier'] = 'reusable';
  $handler->display->display_options['filters']['reusable']['expose']['remember'] = TRUE;

  /* Display: Fieldable Pane Entity */
  $handler = $view->new_display('page', 'Fieldable Pane Entity', 'fieldable_pane_entity_list');
  $handler->display->display_options['defaults']['style_plugin'] = FALSE;
  $handler->display->display_options['style_plugin'] = 'table';
  $handler->display->display_options['style_options']['columns'] = array(
    'view_entity' => 'view_entity',
    'title' => 'title',
    'reusable' => 'reusable',
    'admin_title' => 'admin_title',
    'category' => 'category',
    'admin_description' => 'admin_description',
    'changed' => 'changed',
    'edit_entity' => 'edit_entity',
    'delete_entity' => 'edit_entity',
  );
  $handler->display->display_options['style_options']['default'] = 'changed';
  $handler->display->display_options['style_options']['info'] = array(
    'view_entity' => array(
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'title' => array(
      'sortable' => 1,
      'default_sort_order' => 'asc',
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'reusable' => array(
      'sortable' => 1,
      'default_sort_order' => 'asc',
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'admin_title' => array(
      'sortable' => 1,
      'default_sort_order' => 'asc',
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'category' => array(
      'sortable' => 1,
      'default_sort_order' => 'asc',
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'admin_description' => array(
      'sortable' => 0,
      'default_sort_order' => 'asc',
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'changed' => array(
      'sortable' => 1,
      'default_sort_order' => 'desc',
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
    'edit_entity' => array(
      'align' => '',
      'separator' => '&emsp;',
      'empty_column' => 0,
    ),
    'delete_entity' => array(
      'align' => '',
      'separator' => '',
      'empty_column' => 0,
    ),
  );
  $handler->display->display_options['style_options']['sticky'] = TRUE;
  $handler->display->display_options['style_options']['empty_table'] = TRUE;
  $handler->display->display_options['defaults']['style_options'] = FALSE;
  $handler->display->display_options['defaults']['row_plugin'] = FALSE;
  $handler->display->display_options['defaults']['row_options'] = FALSE;
  $handler->display->display_options['path'] = 'admin/content/fieldable_pane_entity';
  $handler->display->display_options['menu']['type'] = 'tab';
  $handler->display->display_options['menu']['title'] = 'Fieldable Pane Entity';
  $handler->display->display_options['menu']['description'] = 'Fieldable Pane Entity';
  $handler->display->display_options['menu']['weight'] = '0';
  $handler->display->display_options['menu']['name'] = 'management';
  $handler->display->display_options['menu']['context'] = 0;
  $handler->display->display_options['menu']['context_only_inline'] = 0;
  $export['admin_views_fpp'] = $view;

  return $export;
}
