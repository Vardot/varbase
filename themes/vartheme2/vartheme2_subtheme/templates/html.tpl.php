<!DOCTYPE html>
<html xml:lang="<?php print $language->language; ?>" dir="<?php print $language->dir; ?>"<?php print $rdf_namespaces; ?>>
  <head profile="<?php print $grddl_profile; ?>">
    <?php print $head; ?>
    <title><?php print $head_title; ?></title>
    <meta http-equiv="cleartype" content="on">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <?php
    /*
    <!-- Icons ================ -->
    <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
    <link rel="apple-touch-icon-precomposed" href="<?php print base_path() . path_to_theme() . 'images/icons/'; ?>apple-touch-icon-precomposed.png" />
    <!-- For first- and second-generation iPad: -->
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php print base_path() . path_to_theme() . 'images/icons/'; ?>apple-touch-icon-72x72-precomposed.png" />
    <!-- For iPhone with high-resolution Retina display: -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php print base_path() . path_to_theme() . 'images/icons/'; ?>apple-touch-icon-114x114-precomposed.png" />
    <!-- For third-generation iPad with high-resolution Retina display: -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php print base_path() . path_to_theme() . 'images/icons/'; ?>apple-touch-icon-144x144-precomposed.png" />
    */
    ?>
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

    <?php print $page_top; ?>
    <?php print $page; ?>
    <?php print $page_bottom; ?>
  </body>
</html>
