<div class="panel-two-half clearfix panel-display" <?php if (!empty($css_id)) { print "id=\"$css_id\""; } ?>>
  <div class="row">
    <?php if ($content['top']): ?>
      <div class="panel-region-top panel-panel col-sm-12">
        <div class="inside">
          <div class="row"><?php print $content['top']; ?></div>
        </div>
      </div>
    <?php endif; ?>

  <div class="center-wrapper panel-panel col-sm-12">
    <div class="row">
      <div class="container">
        <div class="row">
          <div class="panel-region-left panel-panel col-sm-6">
            <div class="inside">
              <div class="row"><?php print $content['left']; ?></div>
            </div>
          </div>
          <div class="panel-region-right panel-panel col-sm-6">
            <div class="inside">
              <div class="row"><?php print $content['right']; ?></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php if ($content['bottom']): ?>
    <div class="panel-region-bottom panel-panel col-sm-12">
      <div class="inside">
        <div class="row"><?php print $content['bottom']; ?></div>
      </div>
    </div>
  <?php endif; ?>
</div>
</div>
