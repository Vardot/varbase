<?php

/**
 * @file template.php
 */

include_once "includes/alter.inc";

function varless_preprocess_search_result(&$variables) {
  $variables['info_split']['type'] = $variables['result']['type'];
}

