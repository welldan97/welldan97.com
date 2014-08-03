moment = require('moment')

module.exports.formatDate = (date) ->
  moment(date).format('YYYY-MM-DD')
