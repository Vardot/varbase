<?php

function _varbase_magic_views_content_views_panes_form_alter_bootstrap_grid(&$form, &$form_state, $form_id) {
  // Get the configuration
  $conf = $form_state['conf'];
  $view = &$form_state['view'];
  $view_handler = &$view->display_handler;
  $allow_settings = $view_handler->options['allow'];
  $style_options = $view_handler->options['style_options'];

  $grid_options = array(1, 2, 3, 4, 6, 12);

  // @todo find a new way to check and enable this option
  if(isset($allow_settings['fields_override']) && !empty($allow_settings['fields_override'])) {
    $form['varbase_magic']['#tree'] = TRUE;
    $form['varbase_magic']['style_options']['#tree'] = TRUE;

    if (isset($conf['varbase_magic']['style_options']['columns'])) {
      $columns_default_value = $conf['varbase_magic']['style_options']['columns'];
    } else {
      $columns_default_value = $style_options['columns'];
    }
    $form['varbase_magic']['style_options']['columns'] = array(
      '#type' => 'select',
      '#title' => t('Number of columns'),
      '#options' => array_combine($grid_options, $grid_options), // options array keys and values are the same.
      '#required' => TRUE,
      '#default_value' => $columns_default_value,
    );
  }
}

function _varbase_magic_views_pre_bootstrap_grid(&$view) {
  $view_handler = &$view->display_handler;
  $conf = $view_handler->options['pane_conf'];
  $style_options = &$view_handler->options['style_options'];

  // Break if the style plugin changed unexpectedly.
  if ($view_handler->options['style_plugin'] != 'views_bootstrap_grid_plugin_style') return;

  if (isset($conf['varbase_magic']['style_options']['columns'])) {
    $style_options['columns'] = $conf['varbase_magic']['style_options']['columns'];
  }
}