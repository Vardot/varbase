<?php
/**
 * @file
 * region--footer.tpl.php
 *
 * @see bootstrap_preprocess_region().
 * @see bootstrap_process_page().
 *
 * @ingroup themeable
 */
?>
<div class="<?php print $classes; ?>">
<?php if ($content): ?>
  <?php print $content; ?>
<?php endif; ?>
</div>
