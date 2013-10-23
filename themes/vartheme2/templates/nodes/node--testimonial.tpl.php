<div id="node-<?php print $node->nid; ?>" class="<?php print $classes; ?>"<?php print $attributes; ?>>
  <?php print render($title_prefix); ?>
  <?php print render($title_suffix); ?>
  <blockquote>
    <?php
      print render($content['field_brief']);
    ?>
    <footer>
      <?php print render($content['field_author']) . ' | ' . render($content['field_client']) ?>
    </footer> 
  </blockquote>
</div>
