module.exports = (connect, options) ->
  middlewares = []
  directory = options.directory or options.base[options.base.length - 1]
  options.base = [options.base] unless Array.isArray(options.base)

  options.base.forEach (base) ->
    middlewares.push connect.static(base)

  middlewares.push connect.directory(directory)
  middlewares
