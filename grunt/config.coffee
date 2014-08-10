isEnvironment = require('../lib/commons').isEnvironment

build = if isEnvironment('development')
  'build'
else
  'temp/build'

module.exports =
  source: 'source'
  build: build
  productionBuild: 'build'
  vendor: 'vendor'
  temp: 'temp'
  domain: 'welldan97.dev'
  deploy: 'temp/deploy'
  port: 9000
