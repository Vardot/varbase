<?php
  drupal_add_css(drupal_get_path('theme', 'vardot') . '/css/parallax-slider.css');
  drupal_add_js(drupal_get_path('theme', 'vardot') . '/js/parallax/modernizr.js');
  drupal_add_js(drupal_get_path('theme', 'vardot') . '/js/parallax/jquery.cslider.js');
?>
<div id="da-slider" class="<?php print $classes; ?> da-slider">
  <div class="da-slider-left"></div>
  <div class="da-slider-right"></div>
  <?php print render($title_prefix); ?>
  <?php if ($title): ?>
    <?php print $title; ?>
  <?php endif; ?>
  <?php print render($title_suffix); ?>
  <?php if ($header): ?>
    <div class="view-header">
      <?php print $header; ?>
    </div>
  <?php endif; ?>

  <?php if ($attachment_before): ?>
    <div class="attachment attachment-before">
      <?php print $attachment_before; ?>
    </div>
  <?php endif; ?>

  <?php if ($rows): ?>
    <?php print $rows; ?>
  <?php elseif ($empty): ?>

    <div class="view-empty">
      <?php print $empty; ?>
    </div>
  <?php endif; ?>

  <nav class="da-arrows">
    <span class="da-arrows-prev"><span class="hidden"><?php print t('Previous'); ?></span></span>
    <span class="da-arrows-next"><span class="hidden"><?php print t('Next'); ?></span></span>
  </nav>

  <?php if ($attachment_after): ?>
    <div class="attachment attachment-after">
      <?php print $attachment_after; ?>
    </div>
  <?php endif; ?>

  <?php if ($footer): ?>
    <div class="view-footer">
      <?php print $footer; ?>
    </div>
  <?php endif; ?>

</div><?php /* class view */ ?>