# Varbase Gherkin features

A list of features, and scenarios to have a full test over Varbase 8.x-4.x

If you want to run all Gherkin Features over a new Varbase site.
You will need to create the list of Testing users, Arabic
languages to the site.

## You can run the following command:
```
  $ bin/behat features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )
```

After that you can see the report in the ../behat/reports folder.

If you want to run the test in steps, if you are not interested in the
initialization and cleaning up after the test.

```
  $ bin/behat features/varbase/step1-init-tests
  $ bin/behat features/varbase/step2-apply-tests
  $ bin/behat features/varbase/step3-cleanup-tests
```


## List of features in the step 1 init tests:
--------------------------------------------------------------------------------

```
test_authenticated: { email: 'authenticated.test@vardot.com', password: 'dD.123123ddd' }
test_editor: { email: 'editor.test@vardot.com', password: 'dD.123123ddd' }
test_content_admin: { email: 'content.admin.test@vardot.com', password: 'dD.123123ddd' }
test_site_admin: { email: 'site.admin.test@vardot.com', password: 'dD.123123ddd' }
test_super_admin: { email: 'super.admin.test@vardot.com', password: 'dD.123123ddd' }
```


## List of Features in the step 2 apply tests:
--------------------------------------------------------------------------------


## List of features in the step 3 cleanup tests:
--------------------------------------------------------------------------------

```
test_authenticated
test_editor
test_content_admin
test_site_admin
test_super_admin
```
