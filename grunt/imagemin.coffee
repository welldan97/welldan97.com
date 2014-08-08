module.exports =
  main:
    files: [
      expand: true
      cwd: "<%= config.build %>/assets/images"
      src: "{,**/}*.{gif,jpg,png}"
      dest: "<%= config.productionBuild %>/assets/images"
    ]
