<section class="container">
  <nav class="pull-right clearfix">
    <?php if ($secondary_menu): ?>
    <?php print theme('links__system_secondary_menu', array('links' => $secondary_menu, 'attributes' => array('id' => 'secondary-menu-links', 'class' => array('links', 'inline')))); ?>
    <?php endif; ?>
  </nav>
</section>

<header role="banner" id="page-header" class="header clearfix">
  <!-- print logo -->
  <img src="<?php print $print_logo; ?>" class="visible-print logo" alt="<?php print $site_name; ?>" />

  <div class="container">
    <div id="logo" class="pull-left">
      <a class="brand hidden-print" href="<?php print $front_page; ?>" title="<?php print t('Go to Homepage'); ?>">
        <img src="<?php print $logo; ?>" alt="<?php print $site_name; ?>" />
      </a>
    </div>
    <?php if ($main_menu): ?>
    <nav id="nav" class="pull-right navbar navbar-default" role="navigation">
      <!-- mobile navigation -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-primary-menu-collapse">
          <span class="sr-only"><?php print t('Toggle navigation'); ?></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <!-- main navigation -->
      <div class="collapse navbar-collapse navbar-primary-menu-collapse">
        <?php print theme('links__system_main_menu', array('links' => $main_menu, 'attributes' => array('class' => array('links', 'primary-menu', 'nav', 'nav-pills')))); ?>
      </div>
    </nav>
    <?php endif; ?>
  </div>
</header>

<div id="page">
  <?php if ($page['highlighted']): ?>
  <div class="container vertical-margin">
    <div class="row">
      <div class="col-sm-12">
        <?php print render($page['highlighted']); ?>
      </div>
    </div>
  </div>
  <?php endif; ?>
  
  <?php if ($messages): ?>
  <div id="alerts-wrapper" class="vertical-margin container clearfix">
    <?php print $messages; ?>
  </div>
  <?php endif; ?>

  <?php if ($title): ?>
  <div class="container">
    <div class="page-header">
      <?php print render($title_prefix); ?>
      <h1><?php print $title; ?></h1>
      <?php print render($title_suffix); ?>
    </div>
  </div>
  <?php endif; ?>

  <?php if ($breadcrumb): ?>
  <div id="breadcrumb-wrapper" class="container">
    <?php print $breadcrumb; ?>
  </div>
  <?php endif; ?>

  <!--main content area-->
  <div id="main-content" class="container clearfix">
    <?php if ($page['help']): ?> 
      <?php print render($page['help']); ?>
    <?php endif; ?>
      
    <?php if ($action_links): ?>
    <div class="panel panel-default">
      <div class="panel-body">
        <ul class="list-unstyled action-links"><?php print render($action_links); ?></ul>
      </div>
    </div>
    <?php endif; ?>

    <div class="row">
      <!-- first things first -->
      <section class="<?php print $content_column_class; ?> primary-column">
        <?php if ($tabs): ?>
        <div class="tabs-wrapper">
          <?php print render($tabs); ?>
        </div>
        <?php endif; ?>

        <div class="main-content-wrapper vertical-margin">
          <?php print render($page['content']); ?>
        </div>
      </section>

      <?php if ($page['sidebar_first']): ?>
        <section class="<?php print $first_sidebar_column_class; ?> col-md-3 col-sm-3 col-xs-12 sidebar tertiary-column" role="complementary" id="tertiary-nav">
          <?php print render($page['sidebar_first']); ?>
        </section>  
      <?php endif; ?>

      <?php if ($page['sidebar_second']): ?>
        <section class="<?php print $second_sidebar_column_class; ?> col-md-3 col-xs-12 secondary-column sidebar clearfix" role="complementary" id="secondary-nav">
          <?php print render($page['sidebar_second']); ?>
        </section>  
      <?php endif; ?>
    </div>
  </div>
  <!-- end main content area -->
</div>

<footer id="footer" class="clearfix vertical-margin">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <?php print render($page['footer']); ?>
      </div>
    </div>
  </div>

  <section class="footer-credits">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 clearfix text-center">
          <p>&copy; <?php print date('Y') . ' ' . $site_name . '. ' .  t('All rights reserved.'); ?></p>
        </div>
      </div>
    </div>
  </section>
</footer>