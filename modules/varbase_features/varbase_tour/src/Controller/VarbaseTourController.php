<?php

/**
 * @file
 * Contains \Drupal\varbase_tour\Controller\VarbaseTourController.
 */
 
namespace Drupal\varbase_tour\Controller;
 
use Drupal\Core\Controller\ControllerBase;
 
class VarbaseTourController extends ControllerBase {
  public function content() {
 
    return [
      '#theme' => 'varbase_welcome_theme',
      '#welcome_modal_content' => $this->t('Welcome modal content'),
    ];
 
  }
}