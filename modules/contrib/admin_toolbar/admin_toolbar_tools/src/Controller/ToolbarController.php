<?php

namespace Drupal\admin_toolbar_tools\Controller;

use Drupal\Core\Cache\CacheBackendInterface;
use Drupal\Core\Controller\ControllerBase;
use Drupal\Core\CronInterface;
use Drupal\Core\Routing\TrustedRedirectResponse;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Drupal\Core\Menu\ContextualLinkManager;
use Drupal\Core\Menu\LocalActionManager;
use Drupal\Core\Menu\LocalTaskManager;
use Drupal\Core\Menu\MenuLinkManager;

/**
 * Class ToolbarController
 *
 * @package Drupal\admin_toolbar_tools\Controller
 */
class ToolbarController extends ControllerBase {

  /**
   * The cron service.
   *
   * @var $cron \Drupal\Core\CronInterface
   */
  protected $cron;
  protected $menuLinkManager;
  protected $contextualLinkManager;
  protected $localTaskLinkManager;
  protected $localActionLinkManager;
  protected $cacheRender;

  /**
   * Constructs a CronController object.
   *
   * @param \Drupal\Core\CronInterface $cron
   *   The cron service.
   */
  public function __construct(CronInterface $cron,
                              MenuLinkManager $menuLinkManager,
                              ContextualLinkManager $contextualLinkManager,
                              LocalTaskManager $localTaskLinkManager,
                              LocalActionManager $localActionLinkManager,
                              CacheBackendInterface $cacheRender) {
    $this->cron = $cron;
    $this->menuLinkManager = $menuLinkManager;
    $this->contextualLinkManager = $contextualLinkManager;
    $this->localTaskLinkManager = $localTaskLinkManager;
    $this->localActionLinkManager = $localActionLinkManager;
    $this->cacheRender = $cacheRender;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    return new static(
      $container->get('cron'),
      $container->get('plugin.manager.menu.link'),
      $container->get('plugin.manager.menu.contextual_link'),
      $container->get('plugin.manager.menu.local_task'),
      $container->get('plugin.manager.menu.local_action'),
      $container->get('cache.render')
    );
  }

  /**
   * Reload the previous page.
   */
  public function reload_page() {
    $request = \Drupal::request();
    if ($request->server->get('HTTP_REFERER')) {
      return $request->server->get('HTTP_REFERER');
    }
    else {
      return '/';
    }
  }

  /**
   * Flushes all caches.
   */
  public function flushAll() {
    drupal_flush_all_caches();
    drupal_set_message($this->t('All caches cleared.'));
    return new RedirectResponse($this->reload_page());
  }

  /**
   * Flushes css and javascript caches.
   */
  public function flush_js_css() {
    \Drupal::state()
      ->set('system.css_js_query_string', base_convert(REQUEST_TIME, 10, 36));
    drupal_set_message($this->t('CSS and JavaScript cache cleared.'));
    return new RedirectResponse($this->reload_page());
  }

  /**
   * Flushes plugins caches.
   */
  public function flush_plugins() {
    \Drupal::service('plugin.cache_clearer')->clearCachedDefinitions();
    drupal_set_message($this->t('Plugins cache cleared.'));
    return new RedirectResponse($this->reload_page());
  }

  /**
   * Resets all static caches.
   */
  public function flush_static() {
    drupal_static_reset();
    drupal_set_message($this->t('Static cache cleared.'));
    return new RedirectResponse($this->reload_page());
  }

  /**
   * Clears all cached menu data.
   */
  public function flush_menu() {
    menu_cache_clear_all();
    $this->menuLinkManager->rebuild();
    $this->contextualLinkManager->clearCachedDefinitions();
    $this->localTaskLinkManager->clearCachedDefinitions();
    $this->localActionLinkManager->clearCachedDefinitions();
    drupal_set_message($this->t('Routing and links cache cleared.'));
    return new RedirectResponse($this->reload_page());
  }

  /**
   * Links to drupal.org home page.
   */
  public function drupal_org() {
    $response = new TrustedRedirectResponse("https://www.drupal.org");
    $response->send();
    return $response;
  }

  /**
   * Displays the administration link Development.
   */
  public function development() {
    return new RedirectResponse('/admin/structure/menu/');
  }

  /**
   * Access to Drupal 8 changes.
   * (list changes of the different versions of drupal core).
   */
  public function list_changes() {
    $response = new TrustedRedirectResponse("https://www.drupal.org/list-changes");
    $response->send();
    return $response;
  }

  /**
   * Adds a link to the Drupal 8 documentation.
   */
  public function documentation() {
    $response = new TrustedRedirectResponse("https://api.drupal.org/api/drupal/8");
    $response->send();
    return $response;
  }

  /**
   * Run the cron.
   */
  public function runCron() {
    $this->cron->run();
    drupal_set_message($this->t('Cron ran successfully.'));
    return new RedirectResponse($this->reload_page());
  }

  /**
   * Clear the rendered cache.
   */
  public function cacheRender() {
    $this->cacheRender->invalidateAll();
    drupal_set_message($this->t('Render cache cleared.'));
    return new RedirectResponse($this->reload_page());
  }

}
