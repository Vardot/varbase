State — styles that deal with client-side changes to components.

Styles that deal with transient changes to a component’s appearance. Often,
 these are client-side changes that occur as the user interacts with the page,
 such as hovering links or opening a modal dialog. In some cases, states are
 static for the life of the page and are set from the server, such as the
 active element in main navigation. The main ways to style state are:

Custom classes, often but not always applied via JavaScript. These should be
 prefixed with .is-, e.g. .is-transitioning, .is-open;

pseudo-classes, such as :hover and :checked;
HTML attributes with state semantics, such as details[open];
media queries: styles that alter appearance based on the immediate browser 
environment.

https://drupal.org/docs/develop/standards/css/css-file-organization-for-drupal-8
