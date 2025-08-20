[![Vardot](https://circleci.com/gh/Vardot/varbase/tree/10.0.x.svg)](https://app.circleci.com/pipelines/github/Vardot/varbase?branch=10.0.x) [![Ceasefire Now](https://badge.techforpalestine.org/ceasefire-now)](https://techforpalestine.org/learn-more) Varbase 10.0.7

[![](https://www.drupal.org/files/project-images/varbase-medium-logo-color-with-padding.png)](https://www.drupal.org/project/varbase)

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

Starting a new project? Consider **Varbase** for **Drupal 10**.
Installing **Varbase `10.0.x`** comes with several extra automated installation
steps, to take full advantage of Varbase, other than the **Drupal 10** installation
instructions.


# Install with Composer


To install the most recent stable release of **Varbase `10.0.x`** run this command:
```
composer create-project Vardot/varbase-project:~10 PROJECT_DIR_NAME --no-dev --no-interaction
```

To install the dev version of **Varbase `10.0.x`** run this command:
```
composer create-project vardot/varbase-project:10.0.x-dev PROJECT_DIR_NAME --stability dev --no-interaction
```

## [Create a new Vartheme sub theme for a project](https://github.com/Vardot/varbase/tree/10.0.x/scripts/README.md)

## [Automated Functional Testing](https://github.com/Vardot/varbase/blob/10.0.x/tests/README.md)

## [Varbase 10.0.x Developer Guide](https://docs.varbase.vardot.com/v/10.0.x)

## [CHANGELOG for Varbase](https://github.com/Vardot/varbase/blob/10.0.x/CHANGELOG.md)

## [Varbase Gherkin features](https://github.com/Vardot/varbase/blob/10.0.x/tests/features/varbase/README.md)

## [Varbase Developer Guide](https://docs.varbase.vardot.com/v/10.0.x/developers)

## [General instructions on how to update Varbase](https://github.com/Vardot/varbase/blob/10.0.x/UPDATE.md)

## [Local development with Lando](https://docs.varbase.vardot.com/v/10.0.x/developers/installing-varbase/installing-varbase-with-lando)

1. Install Lando locally, steps for installing can be found [here](https://docs.lando.dev/basics/installation.html).
2. Run `lando start`.

## Debugging using Lando

- xDebug is enabled on Lando by default for PHP debugging.
- The debugger is set to listen for the port 9003 but can be changed in `.lando/.php.ini`

## [Local development with DDEV](https://docs.varbase.vardot.com/v/10.0.x/developers/installing-varbase/installing-varbase-with-ddev)

1. Install DDEV locally, steps for installing can be found [here](https://ddev.readthedocs.io/en/stable/).
2. Run `ddev start`.

## Remote Development Environment (IDE)
> - [Gitpod](https://gitpod.io/#https://github.com/vardot/varbase-project)
> - [Tugboat.qa](https://www.tugboatqa.com)

Join Our Slack Team for Feedback and Support
http://slack.varbase.vardot.com/

Sponsored and developed by [Vardot](https://www.drupal.org/vardot).
