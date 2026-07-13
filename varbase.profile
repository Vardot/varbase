<?php

/**
 * @file
 * Enables modules and site configuration for the Varbase profile.
 */

declare(strict_types=1);

use Drupal\Core\Form\FormStateInterface;
use Drupal\RecipeKit\Installer\Hooks;

/**
 * Implements hook_install_tasks().
 */
function varbase_install_tasks(array &$install_state): array {
  return Hooks::installTasks($install_state);
}

/**
 * Implements hook_install_tasks_alter().
 */
function varbase_install_tasks_alter(array &$tasks, array $install_state): void {
  Hooks::installTasksAlter($tasks, $install_state);
}

/**
 * Implements hook_form_alter().
 */
function varbase_form_alter(array &$form, FormStateInterface $form_state, string $form_id): void {
  Hooks::formAlter($form, $form_state, $form_id);

  // RecipeKit names user 1 `admin` and leaves the email empty. Varbase sites are
  // set up with a `webmaster` account, the same account `ddev install-varbase`
  // creates, so keep the browser installer consistent with that.
  if ($form_id === 'install_configure_form') {
    $form['admin_account']['account']['name']['#default_value'] = 'webmaster';
    $form['admin_account']['account']['mail']['#default_value'] ??= '';
    if (empty($form['admin_account']['account']['mail']['#default_value'])) {
      $form['admin_account']['account']['mail']['#default_value'] = 'webmaster@vardot.com';
    }
  }
}
