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
  $tasks['install_install_profile']['function'] = 'varbase_install_profile';
  $tasks['install_profile_modules']['function'] = 'varbase_apply_recipes';
}

/**
 * Install task callback: installs User and the profile itself.
 *
 * Wraps RecipeKit's installProfile(). Core puts a token in the session so only
 * one browser can run the installer, and in this request it is not saved yet.
 * Installing modules rebuilds the container, which throws away unsaved session
 * data, so the browser installer answered "Access denied" on the next step.
 * Hold on to the token and put it back afterwards, as the Drupal CMS installer
 * does.
 *
 * @see install_bootstrap_full()
 * @see \Drupal\Core\DrupalKernel::initializeContainer()
 * @see \Drupal\RecipeKit\Installer\Hooks::installProfile()
 */
function varbase_install_profile(): void {
  $session_token = \Drupal::request()->getSession()->get('install_session_token');
  Hooks::installProfile();
  if ($session_token) {
    \Drupal::request()->getSession()->set('install_session_token', $session_token);
  }
}

/**
 * Install task callback: applies the chosen site template.
 *
 * Wraps RecipeKit's applyRecipes(). Varbase Starter is the default site
 * template, kept here rather than under `recipes:` in varbase.info.yml, which
 * Drupal 11.5 reads as a flat list of recipes to apply itself.
 *
 * @param array $install_state
 *   An array of information about the current installation state.
 *
 * @return array
 *   The batch job definition.
 *
 * @see \Drupal\RecipeKit\Installer\Hooks::applyRecipes()
 */
function varbase_apply_recipes(array &$install_state): array {
  if (empty($install_state['parameters']['recipes'])) {
    $install_state['parameters']['recipes'] = ['drupal/varbase_starter'];
  }
  return Hooks::applyRecipes($install_state);
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
