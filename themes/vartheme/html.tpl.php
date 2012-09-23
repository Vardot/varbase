<!DOCTYPE html>
<html dir="<?php print $language->dir; ?>"<?php print $rdf_namespaces; ?>>

<head profile="<?php print $grddl_profile; ?>">
  <!--[if lte IE 6]><META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://www.timo-ernst.net/stop-the-ie6"><![endif]--> 
  <?php print $head; ?>
  <title><?php print $head_title; ?></title>
  <?php print $styles; ?>
  <?php print $scripts; ?>
</head>
<body class="<?php print $classes; ?>" <?php print $attributes;?>>
  <div id="outter-wrapper">
    <?php print $page_top; ?>
    <?php print $page; ?>
    <?php print $page_bottom; ?>
  </div>
</body>
</html>
