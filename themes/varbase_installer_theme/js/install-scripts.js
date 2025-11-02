/**
 * @file
 * JavaScript behaviors for Varbase installer.
 */

(($, Drupal) => {
  Drupal.behaviors.varbaseInstaller = {
    attach() {
      $(
        '<footer class="installer-footer clearfix"><div id="credit" class="clearfix"><div class="message">Proudly built by</div><div class="logo"><a href="http://www.vardot.com" target="_blank">Vardot Company</a></div></div></footer>',
      ).appendTo('body');
    },
  };

  Drupal.behaviors.varbaseGinAccent = {
    attach() {
      // Set accent color to #0D6EFD while installing.
      document.body.setAttribute('data-gin-accent', 'custom');
      Drupal.ginAccent.setCustomAccentColor('#0D6EFD');

      // Set focus color to default gin while installing.
      document.body.setAttribute('data-gin-focus', 'gin');
    },
  };
})(jQuery, Drupal);
