(function (Drupal, once) {
    "use strict";

    /**
     * Handles switching the selected language during installation.
     */
    Drupal.behaviors.languageSwitcher = {
        attach: function (context) {
            once('language-switcher', 'select[name="langcode"]', context).forEach((el) => {
                const url = new URL(window.location.href);

                // Ensure the selected language is chosen.
                el.value = url.searchParams.get('langcode') ?? 'en';

                // Whenever the language is changed, redirect to the same page with the
                // newly selected language code in the URL.
                el.addEventListener('change', (event) => {
                    url.searchParams.set('langcode', event.target.value);
                    window.location.href = url.toString();
                });
            });
        },
    };

})(Drupal, once);
