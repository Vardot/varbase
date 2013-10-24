<?php

/**
 * @file template.php
 */

include_once "includes/alter.inc";
include_once "includes/page.vars.inc";

function vartheme2_preprocess_search_result(&$variables) {
  $variables['info_split']['type'] = $variables['result']['type'];
}

