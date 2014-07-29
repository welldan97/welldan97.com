module.exports.pageUrl = ->
  domain = "#{context.pageDir()[0]}.#{context.config.domain}"
  "http://#{domain}/#{context.page.filename}"
