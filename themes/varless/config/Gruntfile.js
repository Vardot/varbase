/*!
 * Bootstrap's Gruntfile
 * http://getbootstrap.com
 * Copyright 2013-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */

module.exports = function (grunt) {
  'use strict';

  // Force use of Unix newlines
  grunt.util.linefeed = '\n';

  RegExp.quote = function (string) {
    return string.replace(/[-\\^$*+?.()|[\]{}]/g, '\\$&');
  };

  var fs = require('fs');
  var path = require('path');
  var generateGlyphiconsData = require('./grunt/bs-glyphicons-data-generator.js');
  var BsLessdocParser = require('./grunt/bs-lessdoc-parser.js');
  var generateRawFilesJs = require('./grunt/bs-raw-files-generator.js');
  var updateShrinkwrap = require('./grunt/shrinkwrap.js');
  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    config: grunt.file.readJSON('config.json'),
    banner: '<%= config.banner %>',

    // Task configuration.
    clean: {
      options: { force: true },
      dist: ['<%= config.compilePath.fonts %>','<%= config.compilePath.css %>', '<%= config.compilePath.js %>']
    },

    concat: {
      options: {
        banner: '<%= banner %>',
        stripBanners: false
      },
      bootstrap: {
        src: [
          '<%= config.srcPath.bootstrap %>/js/transition.js',
          '<%= config.srcPath.bootstrap %>/js/alert.js',
          '<%= config.srcPath.bootstrap %>/js/button.js',
          '<%= config.srcPath.bootstrap %>/js/carousel.js',
          '<%= config.srcPath.bootstrap %>/js/collapse.js',
          '<%= config.srcPath.bootstrap %>/js/dropdown.js',
          '<%= config.srcPath.bootstrap %>/js/modal.js',
          '<%= config.srcPath.bootstrap %>/js/tooltip.js',
          '<%= config.srcPath.bootstrap %>/js/popover.js',
          '<%= config.srcPath.bootstrap %>/js/scrollspy.js',
          '<%= config.srcPath.bootstrap %>/js/tab.js',
          '<%= config.srcPath.bootstrap %>/js/affix.js',
          '<%= config.srcPath.js %>/*.js'
        ],
        dest: '<%= config.compilePath.js %>/<%= pkg.name %>.js'
      }
    },

    less: {
      compileCore: {
        options: {
          strictMath: true,
          sourceMap: true,
          outputSourceFiles: true,
          sourceMapURL: '<%= pkg.name %>.css.map',
          sourceMapFilename: '<%= config.compilePath.css %>/<%= pkg.name %>.css.map'
        },
        files: {
          '<%= config.compilePath.css %>/<%= pkg.name %>.css': '<%= config.srcPath.less %>/style.less'
        }
      },
      minify: {
        options: {
          cleancss: true,
          report: 'min'
        },
        files: {
          '<%= config.compilePath.css %>/<%= pkg.name %>.min.css': '<%= config.compilePath.css %>/<%= pkg.name %>.css'
        }
      }
    },

    usebanner: {
      dist: {
        options: {
          position: 'top',
          banner: '<%= banner %>'
        },
        files: {
          src: [
            '<%= config.compilePath.css %>/<%= pkg.name %>.css',
            '<%= config.compilePath.css %>/<%= pkg.name %>.min.css',
            '<%= config.compilePath.css %>/<%= pkg.name %>-theme.css',
            '<%= config.compilePath.css %>/<%= pkg.name %>-theme.min.css'
          ]
        }
      }
    },

    csscomb: {
      options: {
        config: '<%= config.srcPath.bootstrap %>/less/.csscomb.json'
      },
      dist: {
        files: {
          '<%= config.compilePath.css %>/<%= pkg.name %>.css': '<%= config.compilePath.css %>/<%= pkg.name %>.css',
          '<%= config.compilePath.css %>/<%= pkg.name %>-theme.css': '<%= config.compilePath.css %>/<%= pkg.name %>-theme.css'
        }
      }
    },

    copy: {
      fonts: {
        expand: true,
        flatten: true,
        src: [
          '<%= config.srcPath.bootstrap %>/fonts/*',
          '<%= config.srcPath.fonts %>/fonts/*',
          '<%= config.srcPath.fontawesome %>/fonts/*'
        ],
        dest: '<%= config.compilePath.fonts %>'
      }
    },

    uglify: {
      options: {
        report: 'min'
      },
      bootstrap: {
        options: {
          banner: '<%= banner %>'
        },
        src: '<%= concat.bootstrap.dest %>',
        dest: '<%= config.compilePath.js %>/<%= pkg.name %>.min.js'
      }
    },

    watch: {
      src: {
        files: [
          '<%= config.srcPath.bootstrap %>/js/*.js',
          '<%= config.srcPath.js %>/*.js',
        ],
        tasks: 'dist-js'
      },
      less: {
        files: '<%= config.srcPath.less %>/*.less',
        tasks: 'less'
      }
    },

    sed: {
      versionNumber: {
        pattern: (function () {
          var old = grunt.option('oldver');
          return old ? RegExp.quote(old) : old;
        })(),
        replacement: grunt.option('newver'),
        recursive: true
      }
    },

    exec: {
      npmUpdate: {
        command: 'npm update'
      },
      npmShrinkWrap: {
        command: 'npm shrinkwrap --dev'
      }
    }
  });


  // These plugins provide necessary tasks.
  require('load-grunt-tasks')(grunt, {scope: 'devDependencies'});

  // Test task.
  var testSubtasks = [];

  // JS distribution task.
  grunt.registerTask('dist-js', ['concat','uglify']);

  // CSS distribution task.
  grunt.registerTask('dist-css', ['less', 'csscomb', 'usebanner']);

  // Full distribution task.
  grunt.registerTask('dist', ['clean', 'dist-css', 'copy:fonts', 'dist-js']);

  // Default task.
  grunt.registerTask('default', ['dist']);

  // Version numbering task.
  // grunt change-version-number --oldver=A.B.C --newver=X.Y.Z
  // This can be overzealous, so its changes should always be manually reviewed!
  grunt.registerTask('change-version-number', 'sed');

  grunt.registerTask('build-glyphicons-data', generateGlyphiconsData);

  // task for building customizer
  grunt.registerTask('build-customizer', ['build-customizer-html', 'build-raw-files']);
  grunt.registerTask('build-customizer-html', 'jade');
  grunt.registerTask('build-raw-files', 'Add scripts/less files to customizer.', function () {
    var banner = grunt.template.process('<%= banner %>');
    generateRawFilesJs(banner);
  });
  // Task for updating the npm packages used by the Travis build.
  grunt.registerTask('update-shrinkwrap', ['exec:npmUpdate', 'exec:npmShrinkWrap', '_update-shrinkwrap']);
  grunt.registerTask('_update-shrinkwrap', function () { updateShrinkwrap.call(this, grunt); });
};
