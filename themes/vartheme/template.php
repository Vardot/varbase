<?php

include_once 'template.inc.php';

function vartheme_preprocess_html(&$vars, $hook) {
  //This is where Vardot base theme do it's stuff, you can write code bellow.
  _vartheme_preprocess_html($vars, $hook);
  
  //Here goes your code.
}

/* -- Delete this line if you want to use this function
function vartheme_preprocess_page(&$vars) {

}
// */

/* -- Delete this line if you want to use this function
function vartheme_preprocess_node(&$vars) {
  
}
// */

/* -- Delete this line if you want to use this function
function vartheme_preprocess_comment(&$vars) {
  
}
// */

/* -- Delete this line if you want to use this function
function vartheme_preprocess_block(&$vars) {
  
}
// */
