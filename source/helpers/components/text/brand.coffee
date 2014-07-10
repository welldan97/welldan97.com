module.exports.brand = module.exports.b = (brand) ->
  brands =
    api: 'API'
    coffeescript: 'CoffeeScript'
    csv: 'CSV'
    javascript: 'Javascript'
    json: 'JSON'
    instagram: 'Instagram'
    haskell: 'Haskell'
    loess: 'loess'
    makefile: 'Makefile'
    r: 'R'

  # TODO: smarter fetch
  brands[brand] || throw new Error("Brand not found brand #{brand}")
