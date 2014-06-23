module.exports =
  options:
    browsers: ['last 1 version']
  main:
    files: [
      expand: true,
      cwd: '<%= config.build %>/assets'
      src: '{,*/}*.css',
      dest: '<%= config.build %>/assets'
    ]
