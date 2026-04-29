[![Vardot](https://circleci.com/gh/Vardot/varbase/tree/11.0.x.svg)](https://app.circleci.com/pipelines/github/Vardot/varbase) **Varbase 11.0.x**


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

Starting a new project? Consider **Varbase** for **Drupal 11**.
Installing **Varbase `11.0.x`** comes with several extra automated installation
steps, to take full advantage of Varbase, other than the **Drupal 11** installation
instructions.


# Install with Composer


To install the most recent stable release of **Varbase `11.0.x`** run this command:
```
composer create-project Vardot/varbase-project:~11.0.0-alpha1 PROJECT_DIR_NAME --no-dev --no-interaction
```

To install the dev version of **Varbase `11.0.x`** run this command:
```
composer create-project vardot/varbase-project:11.0.x-dev PROJECT_DIR_NAME --stability dev --no-interaction
```

## [Automated Functional Testing](https://github.com/Vardot/varbase-project/blob/11.0.x/tests/README.md)

## [Varbase 11.0.x Developer Guide](https://docs.varbase.vardot.com/v/11.0.x)

## [CHANGELOG for Varbase](https://github.com/Vardot/varbase/blob/11.0.x/CHANGELOG.md)

## [Varbase Gherkin features](https://github.com/Vardot/varbase-project/blob/11.0.x/tests/features/varbase/README.md)

## [Varbase Developer Guide](https://docs.varbase.vardot.com/v/11.0.x/developers)


## Local development with DDEV

1. Install DDEV locally, steps for installing can be found [here](https://ddev.readthedocs.io/en/stable/).
2. Run `ddev start`.
3. Install Varbase: `ddev install-varbase full` or `ddev install-varbase minimal`.

### DDEV Commands

| Command | Description |
|---------|-------------|
| `ddev install-varbase minimal\|full` | Install Varbase from scratch with Drupal recipes |
| `ddev init-full-automated-testing` | Install (if needed) + recipes + test users + site prep |
| `ddev init-minimal-automated-testing` | Test users + site prep on an already installed site |
| `ddev add-testing-users` | Add testing user accounts |
| `ddev delete-testing-users` | Remove testing user accounts |

## Remote Development Environment (IDE)
> - [Gitpod](https://gitpod.io/#https://github.com/vardot/varbase-project)

Join Our Slack Team for Feedback and Support
http://slack.varbase.vardot.com/

Sponsored and developed by [Vardot](https://www.drupal.org/vardot).
