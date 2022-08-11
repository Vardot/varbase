[![Vardot](https://circleci.com/gh/Vardot/varbase/tree/9.0.x.svg?style=shield)](https://app.circleci.com/pipelines/github/Vardot/varbase/561/workflows/7545189f-ecec-4815-b8b3-7128546afa74) Varbase 9.0.8

[![](https://www.drupal.org/files/styles/grid-3/public/project-images/Medium-Logo%20Color%20with%20padding.png)](https://www.drupal.org/project/varbase)

## Varbase: The Ultimate Drupal CMS Starter Kit (Bootstrap Ready)

The powerful Drupal distribution for faster development, with editor experience
in mind. Brought to you by [Vardot](https://www.vardot.com/).

Varbase is an enhanced Drupal distribution with a lot of necessities.
Necessities are all the modules, features, configurations that we include
in every project.


## It's made with the following benefits in mind:

* Speeds up development.
* Offers standardized configuration and best-practices.
* Comes with a lot of needed functionalities/modules for every-day Drupal site.
* [Tested, tested, and tested.](https://app.circleci.com/pipelines/github/Vardot/varbase)

Starting a new project? Consider Varbase for Drupal 9.
Installing Varbase 9.0.x comes with several extra automated installation
steps, to take full advantage of Varbase, other than the Drupal 9 installation
instructions.


# Install with Composer

To install the most recent stable release of Varbase 9.0.x run this command:
```
composer create-project Vardot/varbase-project:~9.0 PROJECT_DIR_NAME --no-dev --no-interaction
```

To install the dev version of Varbase 9.0.x run this command:
```
composer create-project vardot/varbase-project:9.0.x-dev PROJECT_DIR_NAME --stability dev --no-interaction
```

## [Create a new Vartheme sub theme for a project](https://github.com/Vardot/varbase/tree/9.0.x/scripts/README.md)

## [Automated Functional Testing](https://github.com/Vardot/varbase/blob/9.0.x/tests/README.md)

## [Varbase 9.0.x Developer Guide](https://docs.varbase.vardot.com)

## [CHANGELOG for Varbase](https://github.com/Vardot/varbase/blob/9.0.x/CHANGELOG.md)

## [Varbase Gherkin features](https://github.com/Vardot/varbase/blob/9.0.x/tests/features/varbase/README.md)

## [Varbase Developer Guide](https://docs.varbase.vardot.com)

## [CHANGELOG for Varbase](https://github.com/Vardot/varbase/blob/9.0.x/CHANGELOG.md)

## [General instructions on how to update Varbase](https://github.com/Vardot/varbase/blob/9.0.x/UPDATE.md)

## Local development with Lando

1. Install Lando locally, steps for installing can be found [here](https://docs.lando.dev/basics/installation.html).
2. Run Lando start.

## Debugging using Lando

- xDebug is enabled on Lando by default for PHP debugging.
- The debugger is set to listen for the port 9003 but can be changed in .lando/.php.ini


Join Our Slack Team for Feedback and Support
http://slack.varbase.vardot.com/

Sponsored and developed by [Vardot](https://www.drupal.org/vardot).
