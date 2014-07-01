module.exports.brand = module.exports.b = (brand) ->
  brands =
    instagram: 'Instagram'

  brands[brand] || throw "Brand not found brand #{brand}"
