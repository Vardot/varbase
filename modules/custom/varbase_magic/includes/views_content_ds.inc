<?php

function _varbase_magic_views_content_views_panes_form_alter_ds(&$form, &$form_state, $form_id) {
  // Get the configuration
  $conf = $form_state['conf'];
  $view = &$form_state['view'];
  $view_handler = &$view->display_handler;
  
  // Get the entity and its disblay modes
  $entity_type = $view->base_table;
  if ($entity_type == 'users') $entity_type = 'user';
  if ($entity_type == 'file_managed') $entity_type = 'file';
  $entity_view_modes = ds_entity_view_modes($entity_type);

  $ds_settings = $view_handler->options['row_options'];
  $allow_settings = $view_handler->options['allow'];
  foreach ($entity_view_modes as $key => $view_mode) {
    $view_mode_settings[$key] = $view_mode['label'];
  }
  $view_mode_settings = array_diff_key($view_mode_settings, _varbase_magic_get_developer_view_modes());
  
  /* if fields_override is set make it add display suite settings insted
   * of fields settings that does not exists.
   *
   * @todo add all settings to varbase_magic array, so we can manage it from a one place
   */
  if(isset($allow_settings['fields_override']) && !empty($allow_settings['fields_override'])) {
    $form['varbase_magic_ds']['ds_view_mode_settings'] = array(
      '#type' => 'select',
      '#default_value' => isset($conf['ds_view_mode_settings']) ? $conf['ds_view_mode_settings'] : $ds_settings['view_mode'],
      '#weight' => 10,
      '#title' => t('View Modes'),
      '#options' => $view_mode_settings
    );

    $form['varbase_magic_ds']['alternating'] = array(
      '#type' => 'checkbox',
      '#title' => t('Use the changing view mode selector'),
      '#default_value' => isset($conf['alternating']) ? $conf['alternating'] : '',
      '#weight' => 14,
    );

    $form['varbase_magic_ds']['ds_alternating_fieldset'] = array(
      '#type' => 'fieldset',
      '#title' => t('Alternating view mode'),
      '#collapsible' => TRUE,
      '#collapsed' => TRUE,
      '#weight' => 15,
      '#input' => TRUE,
      '#process' => array('ctools_dependent_process'),
      '#dependency' => array('edit-alternating' => array('1')),
    );

    // Get view mode for each row from the view
    $ds_rows = $ds_settings['alternating_fieldset'];
    // Remove view modes for each items from the array
    $ds_rows = array_diff_key($ds_rows, array_flip(array('alternating', 'allpages')));
    // Get the item id withpute the wrapping text "item_"
    $ds_rows = array_combine(str_replace('item_', '', array_keys($ds_rows)), $ds_rows);

    $form['varbase_magic_ds']['ds_alternating_fieldset']['ds_rows']["#tree"] = TRUE;

    // The pager count is the limit also to display suite number of items
    $limit = 0;
    if (isset($conf['items_per_page'])) {
      $limit = $conf['items_per_page'];
    } elseif (isset($view_handler->options['pager']['options']['items_per_page'])) {
      $limit = $view_handler->options['pager']['options']['items_per_page'];
    }

    // Print the view mode selectore for each row
    for ($row_id = 0; $row_id < $limit; $row_id++) {
      $form['varbase_magic_ds']['ds_alternating_fieldset']['ds_rows'][$row_id] = array(
        '#title' => t('Item @nr', array('@nr' => $row_id + 1)),
        '#type' => 'select',
        '#default_value' => isset($conf['ds_rows'][$row_id]) ? $conf['ds_rows'][$row_id] : '',
        '#options' => $view_mode_settings,
      );
    }
  }

  $form['#submit'][] = '_varbase_magic_views_content_views_panes_submit_ds';
}

function _varbase_magic_views_content_views_panes_submit_ds(&$form, &$form_state) {
  // Options that we have added to form alter
  // @todo add all settings to varbase_magic array, so we can manage it from a one place
  $form_elements = array('ds_view_mode_settings', 'ds_rows', 'alternating');

  // Add the options to conf will save them with pane settings
  foreach ($form_elements as $element) {
    if (isset($form_state['values'][$element])) {
      $form_state['conf'][$element] = $form_state['values'][$element];
    }
  }
}

function _varbase_magic_views_pre_view_ds(&$view) {
  $view_handler = &$view->display_handler;

  $conf = $view_handler->options['pane_conf'];
  $row_options = &$view_handler->options['row_options'];

  // Check if override view mode optin is checked.
  if (isset($conf['alternating'])) {
    $row_options['alternating'] = $conf['alternating'];
  }

  // Change the view mode for all rows.
  if (isset($conf['ds_view_mode_settings']) && !empty($conf['ds_view_mode_settings'])) {
    $row_options['view_mode'] = $conf['ds_view_mode_settings'];
  }

  // Change the view mode per row.
  if (isset($conf['alternating']) && !empty($conf['alternating']) && isset($conf['ds_rows']) && !empty($conf['ds_rows'])) {
    foreach ($conf['ds_rows'] as $row_key => $row_view_mode) {
      $row_options['alternating_fieldset']['item_' . $row_key] = $conf['ds_rows'][$row_key];
    }
  }
}
