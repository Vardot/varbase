<?php

declare(strict_types=1);

namespace Drupal\varbase\Hook;

use Drupal\Core\Hook\Attribute\Hook;
use Drupal\Core\Session\AccountProxyInterface;

/**
 * Hook implementations for the Varbase profile.
 */
class VarbaseHooks {

  /**
   * Constructs a VarbaseHooks object.
   *
   * @param \Drupal\Core\Session\AccountProxyInterface $currentUser
   *   The current user.
   */
  public function __construct(
    protected AccountProxyInterface $currentUser,
  ) {}

  /**
   * Implements hook_toolbar_alter().
   */
  #[Hook('toolbar_alter')]
  public function toolbarAlter(&$items): void {
    if ($this->currentUser->hasPermission('access toolbar')
      && !empty($items['admin_toolbar_tools'])) {
      $items['admin_toolbar_tools']['#attached']['library'][] = 'varbase/toolbar.icon';
    }
  }

}
