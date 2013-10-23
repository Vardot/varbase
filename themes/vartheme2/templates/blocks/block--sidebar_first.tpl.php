<aside id="<?php print $block_html_id; ?>" class="<?php print $classes; ?> widget clearfix"<?php print $attributes; ?>>

  <?php print render($title_prefix); ?>
  <?php if ($title): ?>
    <h5<?php print $title_attributes; ?>><span><?php print $title; ?></span></h5>
  <?php endif;?>
  <?php print render($title_suffix); ?>

  <?php print $content ?>
  
</aside> <!-- /.block -->
