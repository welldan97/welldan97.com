module.exports.shareOnTwitter = (url, text) ->
  params = "url=#{encodeURIComponent(url)}&text=#{encodeURIComponent(text)}"

  "https://twitter.com/share?#{params}"
