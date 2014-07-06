_ = require('lodash')

module.exports.wrap = (classes..., options) ->

  classesAttribute = if _.isEmpty(classes)
    ''
  else
    " class=\"#{classes.join(' ')}\""

  """
  <div#{classesAttribute}>
    #{options.fn(this)}
  </div>
  """
