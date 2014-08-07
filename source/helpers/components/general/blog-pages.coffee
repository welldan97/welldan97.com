_ = require('lodash')

module.exports.blogPages = ->
  _(context.pages)
    .filter (page) ->
      context.pageDir(page)[0] == 'blog'
    .reject(filename: 'index.html')
    .value()
