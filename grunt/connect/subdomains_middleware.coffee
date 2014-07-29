module.exports = (domain) ->
  subdomainRegexp = new RegExp("([^.]*).?#{domain}")
  (req, res, next) ->
    subdomain = req.headers.host.match(subdomainRegexp)[1] || 'www'

    if isHtmlRequest(req.url)
      req.url = "/#{subdomain}#{req.url}"
    next()

isHtmlRequest = (url) ->
  extension = url.match(/\.([^.]*)$/)?[1]
  !extension || extension == 'html'
