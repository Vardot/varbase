A list of Gherkin features, which help in adding and deleting languages in the
site. so that other testing scenarios will work in the full test.

If you want to test the any of the tools features, you will need to use the
 varbase tools config file, as you can see in the following command.

$ bin/behat --config=behat.varbase-tools.yml tools/languages/add-arabic.feature

$ bin/behat --config=behat.varbase-tools.yml tools/languages/add-arabic.feature

$ bin/behat --config=behat.varbase-tools.yml tools/languages/delete-arabic.feature

$ bin/behat --config=behat.varbase-tools.yml tools/languages/delete-french.feature
