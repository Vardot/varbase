<article id="node-<?php print $node->nid; ?>" class="<?php print $classes; ?> entry-post"<?php print $attributes; ?>>
  <header class="entry-header">
    <?php print render($title_prefix); ?>
    <?php if ($view_mode == 'full'): ?>
      <h1<?php print $title_attributes; ?>><?php print $title; ?></h1>
    <?php else: ?>
      <h2 class="entry-title"<?php print $title_attributes; ?>><a href="<?php print $node_url; ?>"><?php print $title; ?></a></h2>
    <?php endif; ?>
    <?php print render($title_suffix); ?>

    <?php if ($display_submitted): ?>
      <div class="byline">
        <?php print $author; ?> &nbsp;&nbsp;
        <i class="icon-time"></i> <abbr class="published" title="<?php print date('l, F d, Y,  g:i A', $node->created); ?>"><?php print date('F d, Y', $node->created); ?></abbr> &nbsp;&nbsp;
        <i class="icon-comments-alt"></i> <?php print $disqus_comments_num; ?>
      </div>
    <?php endif; ?>

    <?php if (!empty($content['field_categories'])): ?>
    <div class="entry-meta">
      <i class="icon-folder-open"></i>
      <?php print render($content['field_categories']); ?> &nbsp;&nbsp;
      <a href="<?php print url('node/' . $node->nid, array('absolute' => TRUE)); ?>"><i class="icon-link"></i> <?php print t('Permalink'); ?></a>
    </div>
    <?php endif; ?>
    <!--add this share buttons for mobile viewers-->
    <div class="addthis_toolbox addthis_16x16_style">
      <a class="addthis_button_preferred_1"></a>
      <a class="addthis_button_preferred_2"></a>
      <a class="addthis_button_preferred_3"></a>
      <a class="addthis_button_preferred_7"></a>
      <a class="addthis_button_preferred_6"></a>
      <a class="addthis_button_preferred_10"></a>
      <a class="addthis_button_preferred_4"></a>
      <a class="addthis_button_compact"></a>
    </div>
  </header>

  <div class="entry-content"<?php print $content_attributes; ?>>
    <?php if (!empty($content['field_image'])): ?>
      <figure>
        <?php print render($content['field_image']); ?>
        <?php if (!empty($content['field_image']['#items'][0]['title'])): ?>
        <figcaption><?php print $content['field_image']['#items'][0]['title']; ?></figcaption>
        <?php endif; ?>
      </figure>
    <?php endif; ?>
    <?php
      print render($content['body']);
    ?>
    
    <?php if (isset($read_more)): ?>
    <p class="more right">
      <?php print $read_more; ?>
    </p>
    <?php endif; ?>

    <?php if ($view_mode == 'full' && !empty($content['field_files'])): ?>
      <div class="margin-top">
        <?php
          print render($content['field_files']);
        ?>
      </div>
    <?php endif; ?>

  </div>

  <?php if ($view_mode == 'full' && !empty($content['field_tags'])): ?>
  <div class="entry-tags">
    <?php print render($content['field_tags']); ?>
  </div>
  <?php endif; ?>

  <footer class="entry-footer">
    <?php print $entry_date; ?>

    <?php if ($view_mode == 'full'): ?>
    <!-- add this share buttons for desktop and larger screens -->
    <div class="addthis_toolbox addthis_16x16_style">
      <a class="addthis_button_preferred_1"></a>
      <a class="addthis_button_preferred_2"></a>
      <a class="addthis_button_preferred_3"></a>
      <a class="addthis_button_preferred_7"></a>
      <a class="addthis_button_preferred_6"></a>
      <a class="addthis_button_preferred_10"></a>
      <a class="addthis_button_preferred_4"></a>
      <a class="addthis_button_compact"></a>
    </div>
    <!-- AddThis Button END -->

    <?php endif; ?>
  </footer>
</article>
