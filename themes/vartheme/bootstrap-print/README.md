Bootstrap Print 3.1.5
====================
 
 Bootstrap print for Bootstrap v3.

 Mange grids using Bootstrap v3 for printed media.
-
 This will help controlling grid columns size on printed pages. with RTL (right to left).


## We do style most of our bootstrap theme sites based on the Small devices (sm).

LESS
```
  @import '../bootstrap/less/variables';
  @import '../bootstrap/less/mixins/grid-framework';
  @import '../bootstrap/less/mixins/grid';
  @import '../bootstrap-print/less/bootstrap-print.less';
  @import '../bootstrap-print/less/bootstrap-print-sm.less';
```

CSS
```
../bootstrap-print/css/bootstrap-print.css
../bootstrap-print/css/bootstrap-print-sm.css
```

We will have the list of custom set of print column sizes, so that we could
change the layout in the printed media as well.
```
 .col-p-1,
 .col-p-2,
 .col-p-3,
 .col-p-4,
 .col-p-5,
 .col-p-6,
 .col-p-7,
 .col-p-8,
 .col-p-9,
 .col-p-10,
 .col-p-11,
 .col-p-12
```

For Example:
```
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../bootstrap-print/css/bootstrap-print.css">
    <link rel="stylesheet" type="text/css" href="../bootstrap-print/css/bootstrap-print-sm.css">
  <head>
  <body>
    <div class="container">
      <!-- In print media the sm Small devices will be used -->
      <div class="row">
        <div class="left col-sm-8"></div>
        <div class="right col-sm-4"></div>
      </div>

      <!-- In print media the p print will override the sm Small devices -->
      <div class="row">
        <div class="left col-sm-8 col-p-6"></div>
        <div class="right col-sm-4 col-p-6"></div>
      </div>
    </div>
  </body>
</html>
```

 And you have a list of helper CSS classes.
-

Always insert a page break after the element.
```
.always-page-break-after
.always-pba
```

Avoid page break after the element (if possible).
```
.avoid-page-break-after
.avoid-pba
```

Insert page breaks after the element so that the next page is formatted as a left page.
```
.left-page-break-after
.left-pba
```

Insert page breaks after the element so that the next page is formatted as a right page.
```
.right-page-break-after
.right-pba
```

Always insert a page break before the element.
```
.always-page-break-before
.always-pbb
```

Avoid page break before the element (if possible).
```
.avoid-page-break-before
.avoid-pbb
```

Insert page breaks before the element so that the next page is formatted as a left page.
```
.left-page-break-before
.left-pbb
```

Insert page breaks before the element so that the next page is formatted as a right page.
```
.right-page-break-before
.right-pbb
```

Avoid page break inside the element (if possible).
```
.avoid-page-break-inside
.avoid-pbi
```

All link's href URLs will be hidden in print media too.

Install with the composer

```
composer require vardot/bootstrap-print
```   


We could use one of the following options to use the same style in print.

## Large devices (lg) style in print.

LESS
```
  @import '../bootstrap-print/less/bootstrap-print.less';
  @import '../bootstrap-print/less/bootstrap-print-lg.less';
```

CSS
```
../bootstrap-print/css/bootstrap-print.css
../bootstrap-print/css/bootstrap-print-lg.css
```

## Medium devices (md) style in print.

LESS
```
  @import '../bootstrap-print/less/bootstrap-print.less';
  @import '../bootstrap-print/less/bootstrap-print-md.less';
```

CSS
```
../bootstrap-print/css/bootstrap-print.css
../bootstrap-print/css/bootstrap-print-md.css
```

## Small devices (sm) style in print.

LESS
```
  @import '../bootstrap-print/less/bootstrap-print.less';
  @import '../bootstrap-print/less/bootstrap-print-sm.less';
```

CSS
```
../bootstrap-print/css/bootstrap-print.css
../bootstrap-print/css/bootstrap-print-sm.css
```

## Extra small devices (xs) style in print.

LESS
```
  @import '../bootstrap-print/less/bootstrap-print.less';
  @import '../bootstrap-print/less/bootstrap-print-xs.less';
```

CSS
```
../bootstrap-print/css/bootstrap-print.css
../bootstrap-print/css/bootstrap-print-xs.css
```

-

# For right to left:

LESS
```
  @import '../bootstrap/less/variables';
  @import '../bootstrap/less/mixins/grid-framework-rtl';
  @import '../bootstrap/less/mixins/grid-rtl';
  @import '../bootstrap-print/less/bootstrap-print-rtl.less';
  @import '../bootstrap-print/less/bootstrap-print-rtl-sm.less';
```

CSS
```
../bootstrap-print/css/rtl/bootstrap-print-rtl.css
../bootstrap-print/css/rtl/bootstrap-print-rtl-sm.css
```
