_ = require('lodash')

module.exports.embedPlaceholder = (classes...) ->
  classAttr = if _.any(classes)
    " class=\"#{classes.join(' ')}\""
  else
    ''

  """
    <div#{classAttr}></div>
  """
