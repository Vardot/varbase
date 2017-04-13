<?php

/**
 * @file
 * Contains \Varbase\composer\ScriptHandler.
 */

namespace Varbase\composer;

use Symfony\Component\Filesystem\Filesystem;

class ScriptHandler {

  /**
   * Get the Drupal root directory.
   *
   * @param type $project_root
   * @return type
   */
  protected static function getDrupalRoot($project_root) {
    return $project_root . '/docroot';
  }

  /**
   * Post Drupal Scaffold Procedure.
   *
   * @param \Composer\EventDispatcher\Event $event
   *   The script event.
   */
  public static function postDrupalScaffoldProcedure(\Composer\EventDispatcher\Event $event) {

    $fs = new Filesystem();
    $drupal_root = static::getDrupalRoot(getcwd());
     
    if ($fs->exists(getcwd() . '/src/assets/robots-staging.txt')) {
      // Create staging robots file.
      copy(getcwd() . '/src/assets/robots-staging.txt', $drupal_root . '/robots-staging.txt');
    }

    if ($fs->exists($drupal_root . '/.htaccess')
      && $fs->exists($drupal_root . '/profiles/varbase/src/assets/htaccess_extra')) {

      // Alter .htaccess file.
      $htaccess_path = $drupal_root . '/.htaccess';
      $htaccess_lines = file($htaccess_path);
      $lines = [];
      foreach ($htaccess_lines as $line) {
        $lines[] = $line;
        if (strpos($line, "RewriteEngine on") !== FALSE) {
          $lines = array_merge($lines, file(getcwd() . '/src/assets/htaccess_extra'));
        }
      }
      file_put_contents($htaccess_path, $lines);
    }

    if ($fs->exists(getcwd() . '/src/assets/development.services.yml')) {
      // Alter development.services.yml to have Varbase's Local development services.
      copy(getcwd() . '/src/assets/development.services.yml', $drupal_root . '/sites/development.services.yml');
    }
  }
  
  /**
   * Post Drupal Scaffold Sub Profile Procedure.
   *
   *  Remove the distribution item for the parent varbase profile, If we want to
   *  use the sub proifle as the distribution cover on the install step.
   *  
   *  Can be used in the composer.json file of a Sub Profile of Varbase
   *
   *  For Example:
   *  -------------------------------------------------------------------------
   *    "post-drupal-scaffold-cmd": [
   *      "Varbase\\composer\\ScriptHandler::postDrupalScaffoldProcedure",
   *      "Varbase\\composer\\ScriptHandler::postDrupalScaffoldSubProfileProcedure"
   *    ],
   *  -------------------------------------------------------------------------
   * 
   * @param \Composer\EventDispatcher\Event $event
   *   The script event.
   */
  public static function postDrupalScaffoldSubProfileProcedure(\Composer\EventDispatcher\Event $event) {

    $fs = new Filesystem();
    $root = static::getDrupalRoot(getcwd());

    // File name for the varbase.info.yml file.
    $varbase_info_file = '/profiles/varbase/varbase.info.yml';
    $varbase_info_file_with_root_path = $root . $varbase_info_file;

    if ($fs->exists($varbase_info_file_with_root_path)) {
      // Parse the varbase.info.yml file.
      $varbase_info = Yaml::parse(file_get_contents($varbase_info_file_with_root_path));
      
      /**
       *  Remove the distribution item for the parent varbase profile, as we will
       *  use this sub proifle as the distribution cover on the install step.
       */
      if (isset($varbase_info['distribution'])) {
        unset($varbase_info['distribution']);
      }
      
      // Dump the array to string of Yaml format.
      $new_varbase_info = Yaml::dump($varbase_info);

      // Save the new varbase info into the varbase info file.
      file_put_contents($varbase_info_file_with_root_path, $new_varbase_info);
    }
  }
}
