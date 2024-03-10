((Drupal) => {
  Drupal.behaviors.varbaseGinAccent = {
    attach: function attach(context) {

      // Set accent color to blue on while installing.
      document.body.setAttribute('data-gin-accent', 'blue');

      // Set focus color to default gin while installing.
      document.body.setAttribute('data-gin-focus', 'gin');
    },
  };

})(Drupal);
