<?php

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
}
