<?php
/**
 * Custom token manipulation.
 *
 * @todo add UI token alter to make those available in the token UI list.
 */
function varbase_support_tokens($type, $tokens, array $data = array(), array $options = array()) {
  $replacements = array();

 /*
  * This allows any field api token raw values in this format:
  * [field-fieldname:raw:0:value]
  * [field-fieldname:raw:all:value]
  * [field-fieldname:raw:reverse:value]
  *
  * Usually the row field value is stored in value database column, but in
  * certain cases like entity reference the value is stored in a different column name like "target_id".
  */
  $info = module_exists('token') ? token_get_info() : token_info();
  foreach ($tokens as $name => $original) {
    $bits = explode(':', $name);
    if (count($bits) > 2 && !empty($bits[1]) && $bits[1] == 'raw') {
      $token = array_shift($bits);
      if (!empty($info['tokens'][$type][$token])) {
        $value = '';
        // Knock off the $raw.
        array_shift($bits);
        switch ($bits[0]) {
          case 'all':
          case 'reverse':
            // Separate all the values with comma.
            // Do nothing.
            break;
          default:
            if (!is_numeric($bits[0])) {
              // If no delta specified, use zero.
              array_unshift($bits, 0);
            }
            break;
        }

        $items = field_get_items($type, $data[$type], str_replace('-', '_', $token));
        if (!is_array($items)) {
          return array();
        }

        switch ($bits[0]) {
          case 'reverse':
            $items = array_reverse($items);
          case 'all':
          case 'reverse':
            foreach ($items as $delta => $field_value) {
              $value[] = (string) drupal_array_get_nested_value($field_value, array(0 => $bits[1]));
            }
            $value = implode('+', $value);
            break;
          default:
            $value = (string) drupal_array_get_nested_value($items, $bits);
            break;
        }

        if (!empty($options['sanitize'])) {
          $value = check_plain($value);
        }
        $replacements[$original] = $value;
      }
    }
  }

  return $replacements;
}
