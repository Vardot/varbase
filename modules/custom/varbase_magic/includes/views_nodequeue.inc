<?php

/**
 * hook_form_alter @see varbase_magic_form_views_content_views_panes_content_type_edit_form_alter
 * @param type $form
 * @param type $form_state
 * @param type $form_id
 */
function _varbase_magic_views_content_views_panes_form_alter_nodequeue(&$form, $form_state, $form_id) {
  // Get the configuration
  $conf = $form_state['conf'];

  if (isset($conf['arguments']['sqid'])) {
    $qid_default_value = $conf['arguments']['sqid'];
  }
  else {
    $qid_default_value = $form['arguments']['sqid']['#default_value'];
  }
  $form['arguments']['sqid'] = array(
    '#title' => t('Nodequeue'),
    '#description' => t('Select nodequeue to fetch the articles from.'),
    '#type' => 'select',
    '#options' => _varbase_magic_get_all_nodequeues(),
    '#default_value' => $qid_default_value
  );
}

/**
 * Helper function to get array of nodequeu ids and titles.
 * @return array of all nodequeues in the system
 */
function _varbase_magic_get_all_nodequeues() {
  $nodequeues = nodequeue_load_queues(nodequeue_get_all_qids());
  $prepared_nodequeues = array('' => t('-- Select --'));
  if(count($nodequeues)) {
    foreach ($nodequeues as $nodequeue) {
      if($nodequeue->subqueues > 1) {
        $prepared_nodequeues[$nodequeue->name] = $nodequeue->title;
        $subqueue_prefix = '-- ';
      }
      else {
        $subqueue_prefix = '';
      }

      $prepared_subqueues = nodequeue_load_subqueues_by_queue($nodequeue->qid);
      if(count($prepared_subqueues)) {
        foreach ($prepared_subqueues as $subqueue) {
          $prepared_nodequeues[$subqueue->sqid] = $subqueue_prefix . $subqueue->title . ' (' . get_subqueue_count($subqueue->sqid) . ')';
        }
      }
    }
    return $prepared_nodequeues;
  }
  return $prepared_nodequeues;
}

/**
 * Helper function to get subqueue id by term id.
 * @param int $tid
 * @return int subqueue id
 */
function get_sqid_from_term_id($tid) {
  return db_query('SELECT sqid from {nodequeue_subqueue} where reference = :tid', array(':tid' => $tid))
          ->fetchField();
}

/**
 * Helper function to get number of nodes per subqueue
 * @param int $sqid subqueue id
 * @return string subqueue count
 */
function get_subqueue_count($sqid) {
  $subqueue = nodequeue_load_subqueue($sqid);
  if(is_object($subqueue)) {
    return $subqueue->count;
  }
}