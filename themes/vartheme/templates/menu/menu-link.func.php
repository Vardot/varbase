<?php
/**
 * @file
 * menu-link.func.php
 */

/**
 * Overrides theme_menu_link().
 * Remove Bootstrap styling for menu_block module, and replace it with
 * a more usable markup like drupal core theme_menu_link().
 *
 */
function vartheme_menu_link__menu_block(array $variables) {
  $element = $variables['element'];
  $sub_menu = '';
  $depth = $element['#original_link']['depth'];

  if ($element['#below']) {
    unset($element['#below']['#theme_wrappers']);
    $element['#attributes']['class'][] = 'dropdown';
    $sub_menu = ' <span class="caret"></span>';
    $sub_menu .= '<ul class="sub-level-menu sub-menu-'. $depth.'" role="menu">' . drupal_render($element['#below']) . '</ul>';
  }

  $element['#attributes']['class'][] = 'item-level-'. $depth;
  $output = l($element['#title'], $element['#href'], $element['#localized_options']);
  return '<li' . drupal_attributes($element['#attributes']) . '>' . $output . $sub_menu . "</li>";
}
