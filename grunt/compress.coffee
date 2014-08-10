module.exports =
  main:
    options:
      mode: 'gzip'
    files: [
      expand: true
      cwd: '<%= config.productionBuild %>'
      src: '{,**/}*'
      dest: '<%= config.productionBuild %>'
      rename: (path, name) ->
        "#{path}/#{name}.gz"
    ]
