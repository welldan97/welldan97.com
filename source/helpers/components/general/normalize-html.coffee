module.exports.normalizeHTML = (name) ->
  name.replace(/[^a-z]/g, '-')
