<?php

/**
 * @file
 * Default simple view template to display a list of summary lines.
 *
 * @ingroup views_templates
 */
?>
<div class="item-list">
  <ul class="views-summary navigation sort">
    <li><a class="active" href="#" data-filter="*"><?php print t('All'); ?></a></li>
  <?php foreach ($rows as $id => $row): ?>
    <li>
      <a href="#"<?php print !empty($row_classes[$id]) ? ' class="'. $row_classes[$id] .'"' : ''; ?> data-filter=".<?php print $row->filter_class; ?>">
        <?php print $row->link; ?>
        <?php if (!empty($options['count'])): ?>
          (<?php print $row->count?>)
        <?php endif; ?>
      </a>
    </li>
  <?php endforeach; ?>
  </ul>
</div>
