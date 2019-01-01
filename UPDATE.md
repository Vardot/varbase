# Updating Varbase

### Before You Update

Updating Varbase is best done through composer. When you installed Varbase, we will assume that you have done so through the Composer-based project template [varbase-project](https://github.com/Vardot/varbase-project) by running the command: `composer create-project Vardot/varbase-project:^8.6 YOUR_PROJECT --no-dev --no-interaction`

This will create the Varbase project directory that will look like this: `/path/to/YOUR_PROJECT` with the Drupal codebase installed via Varbase installation profile in `/path/to/YOUR_PROJECT`.

Follow the online documentation for more detailed updating process. Visit: https://docs.varbase.vardot.com/updating-varbase

### The Update Process

There are two main update processes we will cover. 1\) Automated process using a tool we've developed to ease the update process for Varbase called [varbase-updater](https://github.com/Vardot/varbase-updater). 2\) Manual process if you wish to take take matters into your own hands.

#### OPTION 1: Automated Process — Using Varbase Updater \([varbase-updater](https://github.com/Vardot/varbase-updater)\)

If you previously used our Composer-based project template to install Varbase [varbase-project](https://github.com/Vardot/varbase-project), complete the following steps to update your codebase’s installed version of Varbase:

1. From a command prompt window, navigate to your project: `cd /path/to/YOUR_PROJECT`  
2. If you're using Varbase 8.6.2 or older, install [varbase-updater](https://github.com/Vardot/varbase-updater) through composer `composer require vardot/varbase-updater:^1.0`   If you're using Varbase 8.6.3 or newer, skip this step; [varbase-updater](https://github.com/Vardot/varbase-updater) comes pre-installed with your Varbase project. 
3. Run the Varbase update tool `/bin/update-varbase.sh`  
4. Follow the wizard. 

   _You can learn about what is going on in the wizard in Varbase Updater wizard section._

5. Buy yourself a drink! You're done. 
6. After the update finishes and you get a success message, navigate to **admin/reports/varbase-updates** to learn about the new changes and updates introduced in your Varbase site.



#### OPTION 2: Manual Process — Do it Yourself

1. From a command prompt window, navigate to your project:  `cd /path/to/YOUR_PROJECT`  
2. Edit your _composer.json_ file to be ready for updates. You have two choices.
   1. **The hard way:** Edit your _composer.json_ to include all the new updates made in [varbase-project](https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json). This includes the new components required and its versions _"require"_, _"repositories"_, _"extra"_, and any other important config. You can use a diff tool such as [Meld](http://meldmerge.org/) or [DiffMerge](https://sourcegear.com/diffmerge/) to help you diff between your old _composer.json_ and the new one from [varbase-project](https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json). 
   2. **The easy way:** 
      1. If you're using Varbase 8.6.2 or older, install [varbase-updater](https://github.com/Vardot/varbase-updater) through composer `composer require vardot/varbase-updater:^1.0`   If you're using Varbase 8.6.3 or newer, skip this step; [varbase-updater](https://github.com/Vardot/varbase-updater) comes pre-installed with your Varbase project. 
      2. Then run  `composer varbase-refactor-composer composer.new.json docroot`  where _docroot_ is your Drupal project codebase. 
      3. Move your new composer file _composer.new.json_ in place of the old one. `mv composer.json composer.json.b; \ mv composer.new.json composer.json` 
3. Back up your code and database 
4. Execute composer update to download updates to modules and libraries `composer update`  
5. Run your database updates `drush updatedb`  or by navigating to http://my.varbase-site.local/update.php \(where _my.varbase-site.local_ is the URL for your website\) and follow the on-screen instructions. 
6. After the update finishes and you get a success message, navigate to **admin/reports/varbase-updates** to learn about the new changes and updates introduced in your Varbase site.

