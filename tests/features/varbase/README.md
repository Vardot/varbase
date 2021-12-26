# Varbase Gherkin features

A list of features, and scenarios to have a full test over Varbase

If you want to run all Gherkin Features over a new Varbase site.
You will need to create the list of Testing users, Arabic
languages to the site.

## You can run the following command:
```
  $ ../../../bin/behat tests/features/varbase/ --format pretty --out std  --format html  --out reports/report-$( date '+%Y-%m-%d_%H-%M-%S' )
```

After that you can see the report in the ../behat/reports folder.

If you want to run the test in steps, if you are not interested in the
initialization and cleaning up after the test.

```
  $ ../../../bin/behat tests/features/varbase
```
