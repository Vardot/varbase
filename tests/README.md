# Varbase Automated Functional Testing

 A set of Gherkin Features and custom Varbase Context with custom
 step definitions, and assets, that helps with automated testing for
 varbase project websites.

 This page list all the steps needed, which you need to run the
 Behat Gherkin Features to test a varbase website in your localhost machine.

To test varbase 9.0.x in the right way you will need to build varbase using
the composer.

## Create a Varbase project with [Composer](https://getcomposer.org/download/):

```
composer create-project vardot/varbase:9.0.x-dev PROJECT_DIR_NAME --stability dev --no-interaction
```

### Add needed testing packages
```
cd path to your files of the project/PROJECT_DIR_NAME
composer require --dev drupal/core-dev:~9.0
composer require --dev drush/drush:~11.0
composer require --dev drupal/drupal-extension:~4.0 --with-all-dependencies
composer require --dev emuse/behat-html-formatter:^0.2.0

```

### Add additional testing packages
```
cd path to yout files of the project/PROJECT_DIR_NAME
BEHAT-SCREENSHOT to capture images on demand or when a test fails

composer require --dev drevops/behat-screenshot

Edit the behat.yml file, which is located in:
`path to your files of the project/PROJECT_DIR_NAME/docroot/profiles/varbase/behat.yml`
- to have DrevOps\BehatScreenshotExtension\Context\ScreenshotContext under contexts
- to have DrevOps\BehatScreenshotExtension:
            dir: '%paths.base%/tests/screenshots'
            fail: true
            fail_prefix: 'failed_'
            purge: false
  under extensions
Read more about it here: https://github.com/drevops/behat-screenshot

```

### Install Varbase
Have Varbase installed from the browser or using the `drush site:install` command.
But make sure to have the webmaster user with the `dD.123123ddd` passwrod.

Exmaple Drush install:
Change directory in the terminal to the path of the project and `/PROJECT_DIR_NAME/docroot`
```
../bin/drush site-install varbase --yes --account-name="webmaster" --account-pass="dD.123123ddd" --account-mail="webmaster@vardot.com" --db-url="mysql://root:rootpw@127.0.0.1/test_varbase" --locale="en" varbase_multilingual_configuration.enable_multilingual=true varbase_extra_components.vmi=true varbase_extra_components.varbase_heroslider_media=true varbase_extra_components.varbase_carousels=true varbase_extra_components.varbase_search=true varbase_extra_components.varbase_blog=true varbase_extra_components.varbase_auth=true install_configure_form.enable_update_status_emails=NULL -vvv

```

### Enable all Varbase components
Make sure that all varbase modules are insalled.
```
../bin/drush pm:enable vmi --yes
../bin/drush pm:enable varbase_heroslider_media --yes
../bin/drush pm:enable varbase_carousels --yes
../bin/drush pm:enable varbase_search --yes
../bin/drush pm:enable varbase_blog --yes
../bin/drush pm:enable varbase_development --yes
../bin/drush pm:enable varbase_styleguide --yes
../bin/drush pm:enable varbase_landing --yes
../bin/drush pm:enable varbase_api --yes
../bin/drush pm:enable varbase_content_planner --yes
../bin/drush pm:enable varbase_media_instagram --yes
../bin/drush pm:enable varbase_media_twitter --yes
../bin/drush pm:enable varbase_auth --yes
../bin/drush pm:enable social_auth_google --yes
../bin/drush pm:enable social_auth_facebook --yes
../bin/drush pm:enable social_auth_twitter --yes
../bin/drush pm:enable social_auth_linkedin --yes
../bin/drush cr
```

### Enable the Drush Language Command module and add a RTL language
Needed to add the extra languages.
```
cd path to your files of the project/PROJECT_DIR_NAME
composer require drupal/drush_language:~1.0
cd `/PROJECT_DIR_NAME/docroot`
../bin/drush pm:enable drush_language --yes
../bin/drush language-add ar
../bin/drush language-info
../bin/drush cr
```

### Uninstall Antibot module to make the Selenium robot have more control 
Needed to uninstall as the Antibot module will prevent the Selenium robot from performing effectively  
```
cd `/PROJECT_DIR_NAME/docroot`
../bin/drush pm:uninstall antibot --yes
../bin/drush cr
```

### Change config for error reporting and CSS/JS aggregation
```
cd `/PROJECT_DIR_NAME/docroot`
../bin/drush config:set system.performance css.preprocess 0 --yes
../bin/drush config:set system.performance js.preprocess 0 --yes
../bin/drush config:set system.logging error_level all --yes
../bin/drush cr
```

### Add testing users.
Change directory in the terminal to the path of the project
 and `/PROJECT_DIR_NAME/docroot/profiles/varbase/scripts`
And run the following base command
```
  bash add-testing-users.sh
```

To delete testing users use
```
  bash delete-testing-users.sh
```

## 1. Change the base url

Edit the behat.yml file, which is located in:
`path to your files of the project/PROJECT_DIR_NAME/docroot/profiles/varbase/behat.yml`
 to the domain or the local virtual domain.
```
  base_url:  'http://localhost/testing/docroot'
```

## 2. Open a new terminal window then start selenium2 at the port 4445. You can
   change the worker selenium robot server and the port number by changing the parameter.

```
    "wd_host: 127.0.0.1:4445/wd/hub"
```

in the behat.yml file.

Follow with the following steps to get all needed tools for selenium to work.

### Install Java.
```
sudo apt update
sudo apt install -y openjdk-11-jre openjdk-11-jre-headless openjdk-11-jdk openjdk-11-jdk-headless
```

### Install/Update Google Chrome browser.
```
sudo apt-get install libappindicator1 fonts-liberation libgbm1 libgtk-3-0 xdg-utils
export CHROME_BIN=/usr/bin/google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
```

### Install/Update Chrome Driver.
```
CHROME_DRIVER_VERSION=$(wget -qO- chromedriver.storage.googleapis.com/LATEST_RELEASE);
echo $CHROME_DRIVER_VERSION;
wget http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo chmod +x chromedriver
sudo mv -f chromedriver /usr/bin/
rm chromedriver_linux64.zip
```

### Get Selenium Standalone server.
```
wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-3.141.59/selenium-server-standalone-3.141.59.jar
```

## Run Selenium Standalone server.

```
$ java -jar selenium-*.jar -port 4445
```

--------------------------------------------------------------------------------
## 3. Automated testing config.

To run the automated testing with behat you will need to change the [ wd_host and base_url ] settings in the [ behat.varbase.yml ] file to go with your project configuration and the selenium server.

```
    Drupal\MinkExtension:
      ajax_timeout: 60
      files_path: "%paths.base%/tests/assets/"
      goutte: ~
      selenium2:
        wd_host: 127.0.0.1:4445/wd/hub
        capabilities:
          # browser: 'firefox'
          browser: 'chrome'
          # browser: 'phantomjs'
          nativeEvents: true
          marionette: true
          browserName: chrome
          version: "*"
          extra_capabilities:
            loggingPrefs:
              performance: ALL
              browser: ALL
            chromeOptions:
              w3c: false
              args:
                - "--headless"
                - "--start-maximized"
                - "--disable-gpu"
                - "--window-size=1600,1200"
                - "--no-sandbox"
                - "--disable-dev-shm-usage"
                - "--disable-setuid-sandbox"
                - "--disable-web-security"
                - "--DNS-prefetch-disable"
                - "--disable-translate"
                - "--ignore-certificate-errors"
                - "--test-type"
                - "--disable-extensions"
                - "--incognito"
                - "--disable-infobars"
                - "--remote-debugging-port=9222"
                - "--allowed-ips=*"
                - "--whitelisted-ips=*"
      base_url: 'http://varbase.test'
      # browser_name: 'firefox'
      browser_name: 'chrome'
      # browser_name: 'phantomjs'
      javascript_session: selenium2
```

Then go to [ PROJECT_DIR_NAME/docroot/profiles/varbase ] in the
terminal then you could run the following command:

```
$ ../../../bin/behat tests/features/varbase
```
## 4. Run the behat command at PROJECT_DIR_NAME/docroot/profiles/varbase/tests

```
$ ../../../bin/behat tests/features/varbase/01-website-base-requirements/01-01-user-registration_only-admins-login.feature
```

```
Feature: Website Base Requirements - User Registration - Only admins login
As an anonymous user
I will not be able to register as a user in the website
So that I will need a site admin or super admin to add me to the website

  Background: 
    Given I am an anonymous user
  
  @local @development @staging @production 
  Scenario: Check that create new account options does not appear for anonymous users.
     When I go to "/user"
      And I wait
     Then I should not see "Create new account"
  
  @local @development @staging @production
  Scenario: Check that only admin can create an account.
     When I go to "/user/register"
      And I wait
     Then I should see "Access denied"
  
  @local @development @staging @production
  Scenario: Verify that anonymous users cannot access admin pages.
     When I go to "/admin"
      And I wait
     Then I should see "Access denied"

3 scenarios (3 passed)
9 steps (9 passed)
0m2.21s (59.89Mb)

```


## 5. Run this command with the .feature file to run the Gherkin Script in it to the installed site.

$ ../../../bin/behat tests/features/varbase/your-gherkin-feature.feature
$ ../../../bin/behat tests/features/project-name/your-gherkin-feature.feature

--------------------------------------------------------------------------------
## 8. Run this command to print all available step definitions
```
$ ../../../bin/behat -di

    - use -dl to just list definition expressions.
    - use -di to show definitions with extended info.
    - use -d 'needle' to find specific definitions.
```

All Varbase custom step definitions are tagged with #varbase tag.

Example: after a run for  bin/behat -di command.

``` 
  default | Then /^I should see image with the "([^"]*)" title text$/
          | #varbase : To Find an image with the title text attribute.
          | Example 1: Then I should see image with the "Flag Earth" title text
          | at `VarbaseContext::iShouldSeeImageWithTheTitleText()`

  default | Then /^I should see image with the "([^"]*)" alt text$/
          | #varbase : To Find an image with the alt text attribute.
          | Example 1: Then I should see image with the "Flag Earth" alt text
          | at `VarbaseContext::iShouldSeeImageWithTheAltText()`
```

 Scenarios are tagged with the Behat tags of:

* **@local = Local**
* **@development = Development server.**
* **@staging = Staging and testing server.**
* **@production = Production live server.**

So that we only run bin/behat --tags with the right tag for the environment.

Example:
```
$ ../../../bin/behat --tags '@development' tests/features/varbase/
```

Which it will run Scenarios which has got the @development tag.

```
$ ../../../bin/behat --tags '@staging' ftests/eatures/varbase/
```

Which it will run Scenarios which has got the @staging tag.

```
$ ../../../bin/behat --tags '@production' tests/features/varbase/
```
Which it will run Scenarios which has got the @production tag.


## 9. To see the report in HTML. Go and open this file in a browser.
    PROJECT_DIR_NAME/docroot/profiles/varbase/tests/reports/index.html
    You will see the latest report for latest run.

    if you want to custom a report you can add
    --format pretty --out std
    --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )

    to format and select your output.

    Example:

    $ ../../../bin/behat tests/features/example.feature --format pretty --out std --format html --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )

# 10. If you want to run all Gherkin Features over a new Varbase site.
You will need to create the list of Testing users, and Add Arabic
languages to the site.

You can run the following command:

```
$ ../../../bin/behat tests/features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )
```
After that you can see the report in the PROJECT_DIR_NAME/docroot/profiles/varbase/tests/reports folder.

If you want to run the test in steps, if you are not interested in the
initialization and cleaning up after the test.

```
$ ../../../bin/behat tests/features/varbase
```

### Testing scenarios are tagged with the Behat tags of:

* **@local = Local**
* **@development = Development server.**
* **@staging = Staging and testing server.**
* **@production = Production live server.**

So that we only run bin/behat --tags with the right tag for the environment.

Run the varbase check tests. Only to check, without any changes to the website.
```
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@check' --format pretty --out std  --format html  --out tests/reports/varbase-check-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
```

Run the varbase full local tests. which developers could test all scenarios in their local machine environment.
```
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@local' --format pretty --out std  --format html  --out tests/reports/varbase-full-local-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
```

Run the varbase full development tests. which developers could test scenarios on the website at the development environment.
```
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@development' --format pretty --out std  --format html  --out tests/reports/varbase-full-development-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
```

Run the varbase full staging tests. which developers could test scenarios on the website at the staging environment.
```
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@staging' --format pretty --out std  --format html  --out tests/reports/varbase-full-staging-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
```

Run the varbase full production only tests. not to change anything with test scenarios on the production environment.
```
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --tags '@production' --format pretty --out std  --format html  --out tests/reports/varbase-full-production-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
```

Run the varbase full tests. init, apply, then cleanup.
```
cd docroot/profiles/varbase;

../../../bin/behat tests/features/varbase --format pretty --out std  --format html  --out tests/reports/varbase-apply-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );

```

Run the varbase full tests. Which equivalent to varbase-init-tests, varbase-apply-tests, varbase-cleanup-tests
```
cd docroot/profiles/varbase;
../../../bin/behat tests/features/varbase --format pretty --out std  --format html  --out tests/reports/varbase-full-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
```

We could run behat tests with this set
Go to [ PROJECT_DIR_NAME/docroot/profiles/varbase ] in the terminal then you could run the following command:
```
$ ../../../bin/behat tests/features/varbase

```

Then you will be able to open the full report for the automated test in a web browser at the following path:
[ PROJECT_DIR_NAME/docroot/profiles/varbase/tests/reports ]
