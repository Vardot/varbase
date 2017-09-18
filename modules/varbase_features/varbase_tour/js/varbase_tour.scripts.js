/**
 * @file
 * Behaviors Varbase tour general scripts.
 */

(function ($, _, Drupal, drupalSettings) {
  "use strict";
  Drupal.behaviors.varbaseTourWelcomeModal = {
    attach: function (context) {
      
      var varbase_tour_welcome_message = Drupal.t("<h3>Welcome to Varbase</h3>"+
"<h1>Congratulations!</h1>" +
"<h3>With Varbase you can build amazing websites that can grow to join the top 100 websites on the internet!</h3>"+
"<p>That\'s true! It\'s built on Drupal 8, the world\'s #1 open source CMS software for small businesses, global enterprises, and everything in between.</p>"+
"<p>&nbsp;</p>"+
"<p>This quick tour will take you on the general features to get you acquainted. Click \"Next\" to proceed.</p>");

      BootstrapDialog.show({
        type: BootstrapDialog.TYPE_INFO,
        size: BootstrapDialog.SIZE_WIDE,
        title: false,
        message: varbase_tour_welcome_message,
        buttons: [{
                    label: 'Next',
                    title: 'Next',
                    action: function(dialog) {
                      window.location = '?tour=1&welcome=done';
                      dialog.setClosable(false);
                    }
                 }]
      });
    }
  };

})(window.jQuery, window._, window.Drupal, window.drupalSettings);
