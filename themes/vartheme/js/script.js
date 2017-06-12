/**
 * @file
 * Behaviors for the vartheme theme.
 */

(function ($, _, Drupal, drupalSettings) {
  'use strict';

  Drupal.behaviors.vartheme = {
    attach: function (context) {

      // Update body top spacing with navebar fixed top.
      function updateBodyTopSpacing() {
        $('#toolbar-administration.toolbar').each(function () {
          $(".main-container").css("padding-top", function() {
            return $("#navbar.navbar-fixed-top").height() + 15;
          });
        });

        $('#navbar.navbar-fixed-top').each(function () {
          $(".main-container").css("padding-top", function() {
            return $("#navbar.navbar-fixed-top").height() + 15;
          });
        });
      }

      updateBodyTopSpacing();
      $(window).resize(updateBodyTopSpacing);

    }
  };

})(window.jQuery, window._, window.Drupal, window.drupalSettings);
