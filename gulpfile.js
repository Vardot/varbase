let gulp = require('gulp'),
  sass = require('gulp-sass')(require('sass')),
  postcss = require('gulp-postcss'),
  csscomb = require('gulp-csscomb'),
  autoprefixer = require('autoprefixer'),
  browserSync = require('browser-sync').create();

const paths = {
  scss: {
    src: 'scss/**/*.scss',
    dest: 'css',
    watch: 'scss/**/*.scss'
  },
  js: {  }
};

// Compile sass into CSS & auto-inject into browsers.
function compile () {
  var sassOptions = {
    outputStyle: 'expanded',
    indented: true,
    indentType: 'space',
    indentWidth: 2,
    linefeed: 'lf',
    sourceMap: false
  };

  return gulp.src([paths.scss.src])
    .pipe(sass(sassOptions).on('error', sass.logError))
    .pipe(postcss([autoprefixer()]))
    .pipe(csscomb())
    .pipe(gulp.dest(paths.scss.dest))
    .pipe(browserSync.stream());
}

// Watching scss files.
function watch () {
  gulp.watch([paths.scss.watch], compile);
}

const build = gulp.series(compile, gulp.parallel(watch));

exports.compile = compile;
exports.watch = watch;

exports.default = build;
