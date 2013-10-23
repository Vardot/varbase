<article id="node-<?php print $node->nid; ?>" class="<?php print $classes; ?> entry-post"<?php print $attributes; ?>>
  <?php print render($title_prefix); ?>
  <?php print render($title_suffix); ?>
  <?php if (!empty($content['field_image'])): ?>
    <figure>
      <?php print render($content['field_image']); ?>
    </figure>
  <?php endif; ?>
  <div class="entry-summary"<?php print $content_attributes; ?>>
    <h4<?php print $title_attributes; ?>><a href="<?php print $node_url; ?>"><?php print $title; ?></a></h4>
    <div class="byline">
      <span class="credit">
        <?php print $author; ?> &nbsp;&nbsp;
        <i class="icon-time"></i> <abbr class="published" title="<?php print date('l, F d, Y,  g:i A', $node->created); ?>"><?php print date('F d, Y', $node->created); ?></abbr> &nbsp;&nbsp;
      </span>
    </div>
    <?php
      print render($content['body']);
    ?>
    <?php if (!empty($content['field_categories'])): ?>
    <div class="categories">
      <i class="icon-folder-open"></i>
      <?php print render($content['field_categories']); ?> &nbsp;&nbsp;
    </div>
    <?php endif; ?>
  </div>
</article>