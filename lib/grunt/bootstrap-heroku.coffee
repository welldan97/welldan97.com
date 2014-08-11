execSyncSilent = require('exec-sync')
_ = require('lodash')

execSync = null

module.exports = (grunt) ->
  execSync = execSyncVerbose(grunt.log.write)

  grunt.registerMultiTask 'bootstrapHeroku',
    'Bootstrap Heroku for deploying',
    ->
      throw new Error('Please specify "auth"') unless @data.auth
      throw new Error('Please specify "app"') unless @data.app

      verifyAuth grunt, @data.auth
      createApp @data.app
      addDomains @data.app, @data.domains

      grunt.log.write('Successfully bootstrapped Heroku')

verifyAuth = (grunt, auth) ->
  currentAuth = execSync 'heroku auth:whoami'
  throw new Error("Please authenticate as #{auth}") if currentAuth != auth

createApp = (app) ->
  apps = execSync('heroku apps').split('\n').slice(1,-1)

  if _.contains(apps, app)
    null
    execSync "heroku apps:destroy #{app} --confirm #{app}"
  execSync "heroku apps:create #{app} -n"

addDomains = (app, domains) ->
  _.each domains, (domain) ->
    execSync("heroku domains:add #{domain}")

execSyncVerbose = (log) ->
  (command) ->
    output = execSyncSilent(command)
    log """
      $ #{command}
      #{output}


    """

    output
