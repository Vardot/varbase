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
            <div class="panel-region-col_1 panel-panel col-sm-3">
              <div class="inside">
                <div class="row"><?php print $content['col_1']; ?></div>
              </div>
            </div>
            <div class="panel-region-col_2 panel-panel col-sm-3">
              <div class="inside">
                <div class="row"><?php print $content['col_2']; ?></div>
              </div>
            </div>
            <div class="panel-region-col_3 panel-panel col-sm-3">
              <div class="inside">
                <div class="row"><?php print $content['col_3']; ?></div>
              </div>
            </div>
            <div class="panel-region-col_4 panel-panel col-sm-3">
              <div class="inside">
                <div class="row"><?php print $content['col_4']; ?></div>
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
