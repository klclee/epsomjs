module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    uglify:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
        build:
          src: 'app/<%= pkg.name %>.js'
          dest: 'src/<%= pkg.name %>.js'
    coffee:
      glob_to_multiple:
        expand: true
        flatten: false
        cwd: 'src/'
        src: ['**/*.coffee']
        dest: 'app'
        ext: '.js'
    watch:
      coffee:
        files: 'src/**/*.coffee'
        tasks: 'coffee'
    nodemon:
      dev:
        options:
          file: 'server.js'
          watchedFolders: ['app']
    concurrent:
      target:
        tasks: ['nodemon', 'watch']
        options:
          logConcurrentOutput: true


  grunt.loadNpmTasks 'grunt-concurrent'
  grunt.loadNpmTasks 'grunt-nodemon'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'



  grunt.registerTask 'default', ['concurrent']