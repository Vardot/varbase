<div class="panel-upstair clearfix panel-display" <?php if (!empty($css_id)) { print "id=\"$css_id\"";} ?>>
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

          <div class="first-step row">
            <div class="panel-region-first-step-left panel-panel col-sm-10">
              <div class="inside">
                <div class="row"><?php print $content['first_step_left']; ?></div>
              </div>
            </div>
            <div class="panel-region-first-step-right panel-panel col-sm-2">
              <div class="inside">
                <div class="row"><?php print $content['first_step_right']; ?></div>
              </div>
            </div>
          </div>

          <div class="second-step row">
            <div class="panel-region-second-step-left panel-panel col-sm-9">
              <div class="inside">
                <div class="row"><?php print $content['second_step_left']; ?></div>
              </div>
            </div>
            <div class="panel-region-second-step-right panel-panel col-sm-3">
              <div class="inside">
                <div class="row"><?php print $content['second_step_right']; ?></div>
              </div>
            </div>
          </div>

          <div class="third-step row">
            <div class="panel-region-third-step-left panel-panel col-sm-8">
              <div class="inside">
                <div class="row"><?php print $content['third_step_left']; ?></div>
              </div>
            </div>
            <div class="panel-region-third-step-right panel-panel col-sm-4">
              <div class="inside">
                <div class="row"><?php print $content['third_step_right']; ?></div>
              </div>
            </div>
          </div>

          <div class="fourth-step row">
            <div class="panel-region-fourth-step-left panel-panel col-sm-7">
              <div class="inside">
                <div class="row"><?php print $content['fourth_step_left']; ?></div>
              </div>
            </div>
            <div class="panel-region-fourth-step-right panel-panel col-sm-5">
              <div class="inside">
                <div class="row"><?php print $content['fourth_step_right']; ?></div>
              </div>
            </div>
          </div>

          <div class="fifth-step row">
            <div class="panel-region-fifth-step-left panel-panel col-sm-6">
              <div class="inside">
                <div class="row"><?php print $content['fifth_step_left']; ?></div>
              </div>
            </div>
            <div class="panel-region-fifth-step-right panel-panel col-sm-6">
              <div class="inside">
                <div class="row"><?php print $content['fifth_step_right']; ?></div>
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
