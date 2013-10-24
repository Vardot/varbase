<?php if (!empty($title)) : ?>
  <h3><?php print $title; ?></h3>
<?php endif; ?>
<div class="<?php print $class; ?>"<?php print $attributes; ?>>
  <?php if (!empty($caption)) : ?>
    <caption><?php print $caption; ?></caption>
  <?php endif; ?>

  <div>
    <?php foreach ($rows as $row_number => $columns): ?>
      <?php
        $columns_count = count($columns);
        $span_number = round(12 / $columns_count);
       ?>
      <div <?php if ($row_classes[$row_number]) { print 'class="row ' . $row_classes[$row_number] .'"';  } ?>>
        <?php foreach ($columns as $column_number => $item): ?>
          <div <?php if ($column_classes[$row_number][$column_number]) { print 'class="col-sm-' . $span_number . ' ' . $column_classes[$row_number][$column_number] .'"';  } ?>>
            <?php print $item; ?>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endforeach; ?>
  </div>
</div>
