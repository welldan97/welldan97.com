_ = require('lodash')

module.exports.embedPlaceholder = (classes...) ->
  cleanClasses = _.reject(classes, _.isObject)

  classAttr = if _.any(cleanClasses)
    " class=\"#{cleanClasses.join(' ')}\""
  else
    ''

  """
    <div#{classAttr}></div>
  """
