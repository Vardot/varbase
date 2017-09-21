/**
 * @file
 * Behaviors for the vartheme theme.
 */

(function ($, _, Drupal, drupalSettings) {
  'use strict';

  Drupal.behaviors.vartheme = {
    attach: function (context) {
      // Vartheme JavaScript behaviors goes here.
      
      // Move panels ipe tray padding buttom by it's outer height.
      $('#panels-ipe-tray').parent('body').css('padding-bottom', $('#panels-ipe-tray').outerHeight());
    }
  };

})(window.jQuery, window._, window.Drupal, window.drupalSettings);
