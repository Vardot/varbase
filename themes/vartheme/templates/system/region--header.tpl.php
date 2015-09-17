<?php
/**
 * @file
 * region--header.tpl.php
 *
 * @see bootstrap_preprocess_region().
 * @see bootstrap_process_page().
 *
 * @ingroup themeable
 */
?>
<div class="row">
  <div class="container">
    <?php if (!empty($site_slogan)): ?>
      <p class="lead"><?php print $site_slogan; ?></p>
    <?php endif; ?>

    <?php if ($content): ?>
      <?php print $content; ?>
    <?php endif; ?>
  </div>
</div>
