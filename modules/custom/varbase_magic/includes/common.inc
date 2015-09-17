<?php

function _varbase_magic_get_developer_view_modes() {
  return array(
    'rss' => 'rss',
    'diff_standard' => 'diff_standard',
    'token' => 'token',
    'revision' => 'revision'
  );
}

/* Get views diplays by view name
 *
 */
function _varbase_magic_get_views_display($view_name) {
  // Get the view code for varbase_content_panes_slideshow view
  $view = views_get_view($view_name);

  // get all the displays in the varbase_content_panes_slideshow view
  $views_diplay = array();
  foreach ($view->display as $machine_name => &$display) {
    $views_diplay[$machine_name] = t($display->display_title);
  }

  // Remove the master display
  unset($views_diplay['default']);

  return $views_diplay;
}
