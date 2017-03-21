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
}
