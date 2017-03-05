<?php

/**
 * @file
 * Contains \Varbase\composer\ScriptHandler.
 */

namespace Varbase\composer;

use Composer\EventDispatcher\Event;

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
  public static function postDrupalScaffoldProcedure(Event $event) {
    //Create staging robots file
    copy(getcwd() . '/src/assets/robots-staging.txt', static::getDrupalRoot(getcwd()) . '/robots-staging.txt');
    //Alter .htaccess file
    $htaccess_path = static::getDrupalRoot(getcwd()) . '/.htaccess';
    $htaccess_lines = file($htaccess_path);
    $lines = [];
    foreach ($htaccess_lines as $line) {
      $lines[] = $line;
      if(strpos($line, "RewriteEngine on") !== FALSE) {
        $lines = array_merge($lines, file(getcwd() . '/src/assets/htaccess_extra'));
      }
    }
    file_put_contents($htaccess_path, $lines);
  }
}
