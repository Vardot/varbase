<?php

declare(strict_types=1);

namespace Drupal\varbase\Installer\Form;

use Drupal\Component\Serialization\Yaml;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Render\Element;
use Drupal\RecipeKit\Installer\Form\RecipeSelectionFormBase;
use Drupal\RecipeKit\Installer\Hooks;
use Symfony\Component\Finder\Finder;

/**
 * Provides a form to choose a site template.
 *
 * This is Varbase's replacement for RecipeKit's SiteTemplateForm. RecipeKit
 * builds its list by constructing every `type: Site` recipe with
 * Recipe::createFromDirectory(), which runs core's ConfigConfigurator
 * pre-flight against the active configuration. In the early installer the
 * active configuration is the on-disk InstallStorage, so a Varbase sub-recipe
 * that ships a config object also provided by a module (for example
 * core.entity_view_mode.media.full) makes the pre-flight throw
 * RecipePreExistingConfigException and the installer dies before the user can
 * choose anything.
 *
 * Listing a template only needs its name, description and screenshot, so this
 * form reads recipe.yml directly and never constructs the recipe. The chosen
 * recipe is still applied the normal way, by RecipeKit's applyRecipes().
 *
 * @see \Drupal\RecipeKit\Installer\Hooks::applyRecipes()
 */
final class SiteTemplateForm extends RecipeSelectionFormBase {

  /**
   * {@inheritdoc}
   */
  public static function toInstallTask(array $install_state): array {
    return [
      'display_name' => t('Choose site template'),
      'type' => 'form',
      'run' => $install_state['parameters']['template'] ?? INSTALL_TASK_RUN_IF_REACHED,
      'function' => self::class,
    ];
  }

  /**
   * {@inheritdoc}
   */
  public function getFormId(): string {
    return 'installer_site_template_form';
  }

  /**
   * {@inheritdoc}
   */
  protected function getChoices(): iterable {
    $choices = [];

    $finder = Finder::create()
      ->in(Hooks::getRecipePath())
      ->files()
      ->followLinks()
      ->name('recipe.yml');

    foreach ($finder as $file) {
      $recipe = Yaml::decode($file->getContents());
      if (($recipe['type'] ?? NULL) !== 'Site') {
        continue;
      }
      $name = basename($file->getPath());

      $choices[$name] = [
        'name' => $recipe['name'] ?? $name,
        'packages' => ["drupal/$name"],
        'description' => $recipe['description'] ?? NULL,
        'extra' => $recipe['extra']['recipe_installer_kit'] ?? [],
        'screenshot' => $file->getPath() . DIRECTORY_SEPARATOR . 'screenshot.webp',
      ];
    }
    return $choices;
  }

  /**
   * {@inheritdoc}
   */
  public function buildForm(array $form, FormStateInterface $form_state, ?array $install_state = NULL): array {
    $form = parent::buildForm($form, $form_state);
    $form['add_ons']['#type'] = 'radios';
    $form['add_ons']['#required'] = TRUE;
    $form['add_ons']['#after_build'][] = [self::class, 'postBuildAddOns'];
    $form['#title'] = $this->t('Choose a site template');

    // Skipping would leave the site with no template at all.
    unset($form['actions']['skip']);

    return $form;
  }

  /**
   * An #after_build callback for the `add_ons` element.
   *
   * @param array $element
   *   The element.
   *
   * @return array
   *   The modified element.
   */
  public static function postBuildAddOns(array $element): array {
    foreach (Element::children($element) as $key) {
      $element[$key]['#theme_wrappers'] = ['form_element__site_template'];
    }
    return $element;
  }

  /**
   * {@inheritdoc}
   */
  public function submitForm(array &$form, FormStateInterface $form_state): void {
    global $install_state;
    parent::submitForm($form, $form_state);

    // If the chosen template declares a finish URL, redirect there when the
    // install is done.
    $packages = $install_state['parameters']['recipes'];
    if (count($packages) === 1) {
      $choice = array_find(
        $this->getChoices(),
        fn (array $choice): bool => $choice['packages'] === $packages,
      );
      if (isset($choice['extra']['finish_url'])) {
        $install_state['parameters']['finish_url'] = $choice['extra']['finish_url'];
      }
    }

    // Indicate that we're done with this form.
    // @see ::toInstallTask()
    $install_state['parameters']['template'] = INSTALL_TASK_SKIP;
  }

}
