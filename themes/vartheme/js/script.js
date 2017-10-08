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
      
      // Fix toolbar top space load of the page.
      var toolbarTabOuterHeight = $('#toolbar-bar').find('.toolbar-tab').outerHeight() || 0;
      var toolbarTrayHorizontalOuterHeight = $('.is-active.toolbar-tray-horizontal').outerHeight() || 0;
      var topSpace = toolbarTabOuterHeight + toolbarTrayHorizontalOuterHeight;
      $('body').css({ 'padding-top': topSpace });

    }
  };

})(window.jQuery, window._, window.Drupal, window.drupalSettings);
