# Varbase Automated Functional Testing

 A set of Gherkin Features and custom Varbase Context with custom
 step definitions, and assets, which help with the automatic testing for
 varbase project websites.


 This page can help  you to have the list all steps, which you need to run the
 Behat Gherkin Features to test a varbase website in your localhost machine.

To test varbase 8.x-8.x in the right way you will need to build varbase using
the composer.

## Create a Varbase project with [Composer](https://getcomposer.org/download/):

```
composer create-project vardot/varbase:8.8.x-dev PROJECT_DIR_NAME --stability dev --no-interaction
```

--------------------------------------------------------------------------------
1. Change the base url value in behat.varbase.yml file, to the domain or the
   local virtual domain.

  base_url:  'http://localhost/testing/docroot'

--------------------------------------------------------------------------------
2. Open a new terminal window then start selenium2 at the port 4445. You can
   change the worker selenium robot server and the port number by changing the parameter.

```
    "wd_host: 127.0.0.1:4445/wd/hub"
```

  in the behat.varbase.yml file.
  or you can get the selenium stand alone server from
  http://www.seleniumhq.org/download/
  then you could run this command in the same location in the terminal

```
$ java -jar selenium-*.jar -port 4445
```

You can Install and configure selenium server to run on the selenium worker
server  by using our command.

```
$ sh ./tools/install-selenium-server/install-selenium-server-2.53.1.sh
```

--------------------------------------------------------------------------------
3. Automated testing config.

To run the automated testing with behat you will need to change the [ wd_host and base_url ] settings in the [ behat.varbase.yml ] file to go with your project configuration and the selenium server.

```
    Behat\MinkExtension:
      files_path: "%paths.base%/tests/assets/"
      goutte: ~
      selenium2:
        wd_host: 127.0.0.1:4445/wd/hub
        capabilities:
          browser: 'firefox'
          # browser: 'chrome'
          # browser: 'phantomjs'
          nativeEvents: true
      base_url: 'http://127.0.0.1:8080'
      browser_name: 'firefox'
      # browser_name: 'chrome'
      # browser_name: 'phantomjs'
      javascript_session: selenium2
```

Then go to [ PROJECT_DIR_NAME/docroot/profiles/varbase ] in the
terminal then you could run the following command:

```
$ ../../../bin/behat tests/features/varbase
```
4. Run the behat command at PROJECT_DIR_NAME/docroot/profiles/varbase/tests

$ ../../../bin/behat tests/features/varbase/step2-apply-tests/01-website-base-requirements/01-01-user-registration_only-admins-login.feature

================================================================================

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
================================================================================

--------------------------------------------------------------------------------
5. Run this command with the .feature file to run the Gherkin Script in it to the installed site.

$ ../../../bin/behat tests/features/varbase/your-gherkin-feature.feature
$ ../../../bin/behat tests/features/project-name/your-gherkin-feature.feature

--------------------------------------------------------------------------------
8. Run this command to print all available step definitions

$ ../../../bin/behat -di

    - use -dl to just list definition expressions.
    - use -di to show definitions with extended info.
    - use -d 'needle' to find specific definitions.

 All Varbase custom step definitions are tagged with #varbase tag.

  Example : after a run for  bin/behat -di command.
================================================================================
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
================================================================================

 Scenarios are tagged with the Behat tags of:

* **@local = Local**
* **@development = Development server.**
* **@staging = Staging and testing server.**
* **@production = Production live server.**

   So that we only run bin/behat --tags with the right tag for the environment.

   Example:
================================================================================
```
    $ ../../../bin/behat --tags '@development' tests/features/varbase/
```
    Which it will run Scenarios which has got the @development tag.

================================================================================
```
    $ ../../../bin/behat --tags '@staging' ftests/eatures/varbase/

    Which it will run Scenarios which has got the @staging tag.
```
================================================================================

    $ ../../../bin/behat --tags '@production' tests/features/varbase/

    Which it will run Scenarios which has got the @production tag.

================================================================================

6. To see the report in HTML. Go and open this file in a browser.
    PROJECT_DIR_NAME/docroot/profiles/varbase/tests/reports/index.html
    You will see the latest report for latest run.

    if you want to custom a report you can add
    --format pretty --out std
    --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )

    to format and select your output.

    Example:

    $ ../../../bin/behat tests/features/example.feature --format pretty --out std --format html --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )

7. If you want to run all Gherkin Features over a new Varbase site.
    You will need to create the list of Testing users, and Add French, and Arabic
    languages to the site.

    # --------------------------------------------------------------------------
    # You can run the following command:
    # --------------------------------------------------------------------------
```
    $ ../../../bin/behat tests/features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )
```
    After that you can see the report in the PROJECT_DIR_NAME/docroot/profiles/varbase/tests/reports folder.

    If you want to run the test in steps, if you are not interested in the
    initialization and cleaning up after the test.

```
    $ ../../../bin/behat tests/features/varbase/step1-init-tests
    $ ../../../bin/behat tests/features/varbase/step2-apply-tests
    $ ../../../bin/behat tests/features/varbase/step3-cleanup-tests
```

8. If you want to test the installation process, you will need to use the
 varbase Install config file, as you can see in the following command.

   $ ../../../bin/behat --config=behat.varbase-install.yml tools/install-varbase/default-installation.feature



# Advanced customized automated testing
To run the automated testing with behat you will need to change the [ wd_host and base_url ] settings in the
[ behat.varbase.yml ] file to go with your project configuration and the selenium server.

```
    Behat\MinkExtension:
      files_path: "%paths.base%/tests/assets/"
      goutte: ~
      selenium2:
        wd_host: 127.0.0.1:4445/wd/hub
        capabilities:
          browser: 'firefox'
          # browser: 'chrome'
          # browser: 'phantomjs'
          nativeEvents: true
      base_url: 'http://127.0.0.1:8080'
      browser_name: 'firefox'
      # browser_name: 'chrome'
      # browser_name: 'phantomjs'
      javascript_session: selenium2
```
      
Testing scenarios are tagged with the Behat tags of:

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
../../../bin/behat tests/features/varbase/step1-init-tests --format pretty --out std  --format html  --out tests/reports/varbase-init-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
../../../bin/behat tests/features/varbase/step2-apply-tests --format pretty --out std  --format html  --out tests/reports/varbase-apply-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
../../../bin/behat tests/features/varbase/step3-cleanup-tests --format pretty --out std  --format html  --out tests/reports/varbase-cleanup-tests-report-$( date '+%Y-%m-%d_%H-%M-%S' );
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
