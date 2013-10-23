<article id="node-<?php print $node->nid; ?>" class="<?php print $classes; ?> entry-post"<?php print $attributes; ?>>
  <?php print render($title_prefix); ?>
  <?php print render($title_suffix); ?>
  <?php if (!empty($content['field_images'])): ?>
    <figure>
      <?php 
        $image = field_view_value('node', $node, 'field_images', $node->field_images['und'][0], 'teaser');
        print '<a href="' . url('node/' . $node->nid, array('absolute' => TRUE)) . '">' . render($image) . '</a>';
      ?>
    </figure>
  <?php endif; ?>
  <div class="entry-summary"<?php print $content_attributes; ?>>
    <h4<?php print $title_attributes; ?>><a href="<?php print $node_url; ?>"><?php print $title; ?></a></h4>
    <div class="byline">
      <span class="credit">
        <?php if (isset($content['field_complete_date'])): ?>
        <i class="icon-time"></i> Completed in <span class="emphasize"><?php print render($content['field_complete_date']); ?></span>
        <?php endif; ?>
      </span>
    </div>
  </div>
</article>