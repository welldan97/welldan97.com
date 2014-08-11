execSync = require('exec-sync')

module.exports = (grunt) ->
  grunt.registerMultiTask 'bootstrapHeroku',
    'Bootstrap Heroku for deploying',
    ->
      throw new Error('Please specify "auth"') unless @data.auth
      throw new Error('Please specify "app"') unless @data.app
      throw new Error('Please specify "apiKey"') unless @data.apiKey

      verifyAuth grunt, @data.auth
      createApp @data.app
      setDomains @data.app
      grunt.log.write('Successfully bootstrapped Heroku')

verifyAuth = (grunt, auth) ->
  currentAuth = execSync 'heroku auth:whoami'
  throw new Error("Please authenticate as #{auth}") if currentAuth != auth

createApp = (app) ->
  # TODO: List apps first
  execSync "heroku apps:destroy #{app} --confirm #{app}"
  execSync "heroku apps:create #{app}"

setDomains = (app) ->
  # TODO
