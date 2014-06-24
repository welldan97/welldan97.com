module.exports =
  main:
    files: [
      expand: true,
      dot: true,
      cwd: '<%= config.temp %>/source/pages'
      dest: '<%= config.build %>'
      src: ['{,**/}*']
    ]
