A list of Gherkin features, which help in the Default installation to initiate
a site for a client, As an Application site Builders, they will be able to
install Varbase for a selected client, So that they will be able to initiate
the site with the default installation.

If you want to test the installation process feature, you will need to use the
 varbase Install config file, as you can see in the following command.


```
$ bin/behat --config=behat.varbase-install.yml tools/install-varbase/multilingual-installation.feature
```
equivalent to: 

```
drush site-install varbase --yes --site-name=Varbase4 --account-name=webmaster --account-pass=dD.123123ddd --account-mail=webmaster@vardot.com --db-url=mysql://root:123___@localhost/test_varbase4 --locale=en varbase_multilingual_configuration.enable_multilingual=true -vvv
```
-

```
$ bin/behat --config=behat.varbase-install.yml tools/install-varbase/default-installation.feature
```
equivalent to: 
```
drush site-install varbase --yes --site-name=Varbase4 --account-name=webmaster --account-pass=dD.123123ddd --account-mail=webmaster@vardot.com --db-url=mysql://root:123___@localhost/test_varbase4 --locale=en varbase_multilingual_configuration.enable_multilingual=false -vvv
```


-

```
$ bin/behat --config=behat.varbase-install.yml tools/install-varbase/english-language-installation.feature
```
equivalent to: 
```
drush site-install varbase --yes --site-name=Varbase4 --account-name=webmaster --account-pass=dD.123123ddd --account-mail=webmaster@vardot.com --db-url=mysql://root:123___@localhost/test_varbase4 --locale=en varbase_multilingual_configuration.enable_multilingual=false -vvv
```


-

```
$ bin/behat --config=behat.varbase-install.yml tools/install-varbase/arabic-installation.feature
```
equivalent to: 
```
drush site-install varbase --yes --site-name=Varbase4 --account-name=webmaster --account-pass=dD.123123ddd --account-mail=webmaster@vardot.com --db-url=mysql://root:123___@localhost/test_varbase4 --locale=ar varbase_multilingual_configuration.enable_multilingual=false -vvv
```
