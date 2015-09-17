<?php
/**
 * @file
 * node.vars.php
 */

/**
 * Implements hook_preprocess_node().
 *
 * @see node.tpl.php
 */
function vartheme_preprocess_node(&$variables, $hook) {
  // Add $unpublished variable.
  $variables['unpublished'] = (!$variables['status']) ? TRUE : FALSE;
}
