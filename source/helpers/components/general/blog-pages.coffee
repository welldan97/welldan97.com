_ = require('lodash')

module.exports.blogPages = ->
  _(context.pages)
    .filter(dirname: 'build/blog')
    .reject(filename: 'index.html')
    .value()
