/**
 * @file
 * Behaviors for the vartheme admin theme.
 */

(function ($, _, Drupal, drupalSettings) {
  'use strict';

  Drupal.behaviors.varthemeAdmin = {
    attach: function (context) {
      // Vartheme admin JavaScript behaviors goes here.
      $("input").keydown(function (event) {
             if (event.keyCode == 13) {
                event.preventDefault();
        }
      });
    }
  };

})(window.jQuery, window._, window.Drupal, window.drupalSettings);
