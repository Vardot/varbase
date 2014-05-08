(function ($) {

// Override linkit_field because of a bug. See https://drupal.org/node/2207651
Drupal.behaviors.linkit_field = {
  attach : function(context, settings) {
    // If there is no fields, just stop here.

    if (settings.linkit == undefined || settings.linkit.fields == null) {
      return false;
    }

    $.each(settings.linkit.fields, function(field_name, field) {
      $('#' + field_name, context).once('linkit_field', function() {
        $('.linkit-field-' + field_name).click(function() {
          // Set profile.
          Drupal.settings.linkit.currentInstance.profile = Drupal.settings.linkit.fields[field_name].profile;

          // Set the name of the source field..
          Drupal.settings.linkit.currentInstance.source = field_name;

          // Set the source type.
          Drupal.settings.linkit.currentInstance.helper = 'field';

          // Only care about selection if the element is a textarea.
          if ($('textarea#' + field_name).length) {
            var selection =  Drupal.linkit.getDialogHelper('field').getSelection($('#' + field_name).get(0));
            // Save the selection.
            Drupal.settings.linkit.currentInstance.selection = selection;
          }

          // Suppress profile changer.
          Drupal.settings.linkit.currentInstance.suppressProfileChanger = true;

          // Create the modal.
          Drupal.linkit.createModal();

         return false;
        });
      });
    });
  }
};

})(jQuery);