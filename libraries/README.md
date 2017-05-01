# Libraries

## Why this folder?
This folder needed for the drupal.org make and build system, if you are using
the composer to create projects you could delete this folder, and use the root
drupal libraries folder, which the composer manage it.

## CKEditor - BiDi (Text Direction) library.
We added this library to varbase code because it's not listed in the Drupal.org
Library Packaging Whitelist, we will move the command to get the library in the
drupal-org.make file, until it been added to the Packaging Whitelist
https://www.drupal.org/node/2874359 
