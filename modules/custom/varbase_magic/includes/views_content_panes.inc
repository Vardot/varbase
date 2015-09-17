<?php
/**
 * @file
 * General views content panes alter and improvments.
 * see varbase_magic_form_views_content_views_panes_content_type_edit_form_alter().
 */
function _varbase_magic_views_panes_form_alter(&$form, &$form_state) {
  $view = &$form_state['view'];
  $view_options = &$view->display_handler->options;

  // Set varbase magic array if it is not set.
  if (isset($form_state['conf']['varbase_magic'])) {
    $magic_conf = $form_state['conf']['varbase_magic'];
  } else {
    $magic_conf = $form_state['conf']['varbase_magic'] = array();
  }

  // We dont allow these options to be used.
  unset($form['override_title_markup']);
  unset($form['more_link']);

  // general improvement to views content pane admin form style
  // @todo we need to randomize the pager_id so we dont generate the same id
  if (isset($form['pager_id'])) {
    $form['pager_id']['#access'] = FALSE;
  }
  unset($form['use_pager']['#prefix']);
  unset($form['pager_id']['#dependency']);
  unset($form['pager_id']['#suffix']);

  // Remove the option to choose the headding tag
  if (isset($form['override_title_heading'])) {
    $form['override_title_heading']['#access'] = FALSE;
    unset($form['pager_id']['#dependency']);
  }

  if (isset($view_options['allow']['use_pager']) && $view_options['allow']['use_pager'] === 'use_pager') {
    _varbase_magic_views_panes_form_alter_pager($form, $form_state);
  }

  // Alter views more option in views content panes form.
  if (isset($view_options['allow']['more_link']) && $view_options['allow']['more_link'] === 'more_link') {
    _varbase_magic_views_panes_form_alter_more_link($form, $form_state);
  }
}

function _varbase_magic_views_panes_form_alter_pager(&$form, &$form_state) {
  $view = &$form_state['view'];
  $view_options = &$view->display_handler->options;
  $magic_conf = $form_state['conf']['varbase_magic'];

  if (isset($form['use_pager'])) {
    $form['varbase_magic']['pager']['#tree'] = TRUE;

    // Move use pager option to a new container for styling purposes.
    $form['varbase_magic']['pager']['use_pager'] = $form['use_pager'];
    $form['varbase_magic']['pager']['use_pager']['#parents'] = array('use_pager');
    unset($form['use_pager']);

    // Add select list to switch the pager type.
    $form['varbase_magic']['pager']['pager_type'] =  array(
      '#title' => 'Select pager type',
      '#type' => 'select',
      '#options' => views_fetch_plugin_names('pager'),
      '#parents' => array('varbase_magic', 'pager', 'type'),
      '#dependency' => array('use-pager-checkbox' => array('1')),
      '#default_value' => isset($magic_conf['pager']['type']) ? $magic_conf['pager']['type'] : $view_options['pager']['type'],
    );
  }
}

function _varbase_magic_views_panes_form_alter_more_link(&$form, &$form_state) {
  $magic_conf = $form_state['conf']['varbase_magic'];

  $form['varbase_magic']['view_more']['#tree'] = TRUE;
  $form['varbase_magic']['view_more']['view_more_enabled'] = array(
    '#type' => 'checkbox',
    '#title' => t('Provide a "more" link.'),
    '#default_value' => isset($magic_conf['view_more']['view_more_enabled']) ? $magic_conf['view_more']['view_more_enabled'] : 0,
    //'#weight' => 14,
  );
  $form['varbase_magic']['view_more']['view_more_options'] = array(
    '#type' => 'fieldset',
    '#title' => t('View more options'),
    '#weight' => 5,
    '#collapsible' => TRUE,
    '#collapsed' => FALSE,
    '#dependency' => array('edit-varbase-magic-view-more-view-more-enabled' => array('1')),
    '#process' => array('ctools_dependent_process'),
  );
  $form['varbase_magic']['view_more']['view_more_options']['view_more_title'] = array(
    '#type' => 'textfield',
    '#title' => t('Link title'),
    '#size' => 50,
    '#default_value' => isset($magic_conf['view_more']['view_more_title']) ? $magic_conf['view_more']['view_more_title'] : '',
    '#parents' => array('varbase_magic', 'view_more', 'view_more_title'),
  );
  $form['varbase_magic']['view_more']['view_more_options']['view_more_link'] = array(
    '#type' => 'textfield',
    '#title' => t('Link url'),
    '#size' => 80,
    // @todo need validate as a link
    '#default_value' => isset($magic_conf['view_more']['view_more_link']) ? $magic_conf['view_more']['view_more_link'] : '',
    '#parents' => array('varbase_magic', 'view_more', 'view_more_link'),
  );
}

function _varbase_magic_views_pre_view_pager(&$view) {
  $view_handler = &$view->display_handler;
  $conf = $view_handler->options['pane_conf'];

  if (isset($conf['varbase_magic']['pager']['type']) && !empty($conf['varbase_magic']['pager']['type'])) {
    $view_handler->options['pager']['type'] = $conf['varbase_magic']['pager']['type'];
  }
}

function _varbase_magic_preprocess_panels_pane_more_link(&$variables) {
  $view_more_conf = &$variables['pane']->configuration['varbase_magic']['view_more'];

  $variables['more'] = l(t($view_more_conf['view_more_title']), $view_more_conf['view_more_link'], array(
    'attributes' => array(
      'class' => array('varbase-magic-more-link'),
    ),
  ));
}
