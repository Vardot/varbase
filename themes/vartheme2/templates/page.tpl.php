<section class="container">
  <!--this is the login for the user-->
  <nav class="user clearfix">
    <?php if ($secondary_menu): ?>
    <?php print theme('links__system_secondary_menu', array('links' => $secondary_menu, 'attributes' => array('id' => 'secondary-menu-links', 'class' => array('links', 'inline', 'pull-right')))); ?>
    <?php endif; ?>
  </nav>
  <!--close user nav-->
  
  <div class="search-wrapper">
    <?php print render($search); ?>
  </div>
</section>

<header role="banner" id="page-header" class="header clearfix">
  <img src="<?php print $print_logo; ?>" class="print logo" alt="<?php print $site_name; ?>" />

  <div class="container">
    <div id="logo" class="pull-left">
      <a class="brand" href="<?php print $front_page; ?>" title="<?php print t('Go to Homepage'); ?>">
        <img src="<?php print $logo; ?>" alt="<?php print $site_name; ?>" />
      </a>
    </div>
    <?php if ($main_menu): ?>
    <nav id="main_menu" class="pull-right navbar navbar-default" role="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-primary-menu-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <?php print theme('links__system_main_menu', array('links' => $main_menu, 'attributes' => array('class' => array('links', 'primary-menu','nav','nav-pills','collapse','navbar-collapse','navbar-primary-menu-collapse','nav-justified')))); ?>
    </nav>
    <?php endif; ?>
  </div>
</header> <!-- /#header -->

<div id="page">
  <?php if ($page['highlighted']): ?>
    <?php print render($page['highlighted']); ?>
  <?php endif; ?>

  <a id="main-content"></a>
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

  <?php if ($messages): ?>
  <div id="alerts-wrapper" class="container clearfix">
    <?php print $messages; ?>
  </div>
  <?php endif; ?>

  <!--main content area-->
  <div id="main-content" class="container clearfix">
    <?php if ($page['help']): ?> 
    <div class="well well-sm"><?php print render($page['help']); ?></div>
    <?php endif; ?>
    
    <?php if ($action_links): ?>
    <ul class="action-links"><?php print render($action_links); ?></ul>
    <?php endif; ?>

    <?php 
     /**
      * Classes can be:
      *   sidebar-left, sidebar-right, reverse-order, holy-grail, contemp-three-cols
      */
    ?>
    <div class="row">


      <!-- first things first -->
      <section class="<?php print $content_column_class; ?> primary-column">
        <?php if ($tabs): ?>
        <?php print render($tabs); ?>
        <?php endif; ?>
        <?php print render($page['content']); ?>
      </section>

      <?php if ($page['sidebar_first']): ?>
        <section class="<?php print $first_sidebar_column_class; ?> col-md-3 col-sm-3 col-xs-12 sidebar tertiary-column" role="complementary" id="tertiary-nav">
          <?php print render($page['sidebar_first']); ?>
        </section>  
        <!-- /#sidebar-first -->
      <?php endif; ?>

      <?php if ($page['sidebar_second']): ?>
        <section class="<?php print $second_sidebar_column_class; ?> col-md-3 col-xs-12 secondary-column sidebar clearfix" role="complementary" id="secondary-nav">
          <?php print render($page['sidebar_second']); ?>
        </section>  
        <!-- /#sidebar-second -->
      <?php endif; ?>

    </div>
  </div><!-- close main content area -->

  <footer id="footer" class="clearfix">
    <div class="container">
      <div class="row-fluid">
        <?php print render($page['footer']); ?>
      </div>
    </div>
  
    <section class="footerCredits">
      <div class="container">
        <div class="clearfix text-center">
          <p>&copy; <?php print date('Y') . ' ' . t('Vardot. All rights reserved.'); ?></p>
          <p>
            <a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US"><img style="display: inline;" alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-sa/3.0/80x15.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Varbase</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://vardot.com" property="cc:attributionName" rel="cc:attributionURL">Vardot</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="http://vardot.com" rel="dct:source">http://vardot.com</a>.
          </p>
        </div>
      </div>
      <!--footerCredits container--> 
    </section>
  </footer>
</div>
