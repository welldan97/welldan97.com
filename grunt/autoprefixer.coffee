module.exports =
  options:
    browsers: ['last 1 version']
  main:
    files: [
      expand: true,
      cwd: '<%= config.productionBuild %>/assets'
      src: '{,**/}*.css',
      dest: '<%= config.productionBuild %>/assets'
    ]
