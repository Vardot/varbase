<!DOCTYPE html>
<html xml:lang="<?php print $language->language; ?>" dir="<?php print $language->dir; ?>">
  <head>
    <?php print $head; ?>
    <title><?php print $head_title; ?></title>
    <meta http-equiv="cleartype" content="on">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <?php print $styles; ?>
    <?php print $scripts; ?>

    <!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body class="<?php print $classes; ?> index" <?php print $attributes;?>>
    <div id="skip-links">
      <a href="#nav" title="<?php print t('Skip to navigation'); ?>" accesskey="n"><?php print t('Skip to navigation'); ?></a>
      <a href="#page" title="<?php print t('Skip to main content'); ?>" accesskey="c"><?php print t('Skip to main content'); ?></a>
    </div>

    <header role="banner" id="page-header" class="header clearfix">

      <div class="container">
        <div id="logo" class="text-center">
          <a class="brand hidden-print" href="<?php print $front_page; ?>" title="<?php print t('Go to Homepage'); ?>">
            <img src="<?php print $logo; ?>" alt="<?php print $site_name; ?>" />
          </a>
        </div>
      </div>
    </header>
    
    <div id="page">
      <?php if ($messages): ?>
      <div id="alerts-wrapper" class="container clearfix">
        <?php print $messages; ?>
      </div>
      <?php endif; ?>
    
      <!--main content area-->
      <div id="main-content" class="container clearfix">
        <div class="row">
          <!-- first things first -->
          <section class="primary-column col-sm-8 col-sm-offset-2 text-center vertical-margin">
            <?php if ($tabs): ?>
            <?php print render($tabs); ?>
            <?php endif; ?>
            <div class="panel panel-default">
              <div class="panel-heading">
                <?php print render($title_prefix); ?>
                <h1><?php print $title; ?></h1>
                <?php print render($title_suffix); ?>
              </div>
              <div class="panel-body">
                <?php print $content; ?>
              </div>
            </div>
          </section>
        </div>
      </div>
      <!-- end main content area -->
    </div>
    
    <footer id="footer" class="clearfix">
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
  </body>
</html>
