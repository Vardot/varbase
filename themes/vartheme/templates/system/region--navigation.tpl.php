<?php
/**
 * @file
 * region--navigation.tpl.php
 *
 * Default theme implementation to display the "navigation"
 *
 * @see bootstrap_preprocess_region().
 * @see bootstrap_process_page().
 *
 * @ingroup themeable
 */
?>
<div class="<?php print $page['navbar_classes']; ?>">
  <div class="container">
    <div class="navbar-header" itemscope="itemscope" itemtype="http://schema.org/Organization">
      <?php if ($page['logo']): ?>
        <a itemprop="url" class="logo navbar-btn pull-left" href="<?php print $page['front_page']; ?>" title="<?php print t('Home'); ?>">
          <img src="<?php print $page['logo']; ?>" alt="<?php print t('Home'); ?>" />
        </a>
      <?php endif; ?>

      <?php if (!empty($page['site_name'])): ?>
        <meta itemprop="name" content="Newspaper">
        <a class="name navbar-brand" href="<?php print $page['front_page']; ?>" title="<?php print t('Home'); ?>"><?php print $page['site_name']; ?></a>
      <?php endif; ?>

      <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <?php if (!empty($content)): ?>
      <div class="navbar-collapse collapse">
        <nav role="navigation">
          <?php if (!empty($content)): ?>
            <div class="<?php print $classes; ?>">
              <?php print $content; ?>
            </div>
          <?php endif; ?>
        </nav>
      </div>
    <?php endif; ?>
  </div>
</div>
