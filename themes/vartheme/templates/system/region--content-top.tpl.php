<?php
/**
 * @file
 * Default theme implementation to display a region.
 *
 * Available variables:
 * - $content: The content for this region, typically blocks.
 * - $classes: String of classes that can be used to style contextually through
 *   CSS. It can be manipulated through the variable $classes_array from
 *   preprocess functions. The default values can be one or more of the following:
 *   - region: The current template type, i.e., "theming hook".
 *   - region-[name]: The name of the region with underscores replaced with
 *     dashes. For example, the page_top region would have a region-page-top class.
 * - $region: The name of the region variable as defined in the theme's .info file.
 *
 * Helper variables:
 * - $classes_array: Array of html class attribute values. It is flattened
 *   into a string within the variable $classes.
 * - $is_admin: Flags true when the current user is an administrator.
 * - $is_front: Flags true when presented in the front page.
 * - $logged_in: Flags true when the current user is a logged-in member.
 *
 * @see template_preprocess()
 * @see template_preprocess_region()
 * @see template_process()
 *
 * @ingroup themeable
 */
?>
<div class="container">
  <div class="row">
    <div class="<?php print $classes; ?>">
      <?php if (!empty($page['tabs'])): ?>
        <?php print render($page['tabs']); ?>
      <?php endif; ?>
      <?php if (!empty($page['breadcrumb'])): print $page['breadcrumb']; endif;?>
      <a id="main-content"></a>
      <?php print render($page['title_prefix']); ?>
      <?php if (!empty($page['title'])): ?>
        <h1 class="page-header"><?php print $page['title']; ?></h1>
      <?php endif; ?>
      <?php print render($page['title_suffix']); ?>
      <?php print $page['messages']; ?>
      <?php if (!empty($page['page']['help'])): ?>
        <?php print render($page['page']['help']); ?>
      <?php endif; ?>
      <?php if (!empty($page['action_links'])): ?>
        <ul class="action-links"><?php print render($page['action_links']); ?></ul>
      <?php endif; ?>

      <?php if ($content): ?>
        <?php print $content; ?>
      <?php endif; ?>
    </div>
  </div>
</div>
