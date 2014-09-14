fs = require('fs')
execSyncVerbose = require('../exec-sync-verbose')
execSync = null

module.exports = (grunt) ->
  execSync = execSyncVerbose(grunt.log.write)

  grunt.registerMultiTask 'deployHeroku',
    'Deploy to Heroku',
    ->
      throw new Error('Please specify "cwd"') unless @data.cwd
      throw new Error('Please specify "app"') unless @data.app
      inDir @data.cwd, (execSync) =>
        execSync 'git init' unless fs.existsSync('.git')
        execSync 'git add -A'
        execSync "git commit -m 'Deploy to Heroku'"

        execSync "git push git@heroku.com:#{@data.app}.git"
        execSync "heroku ps:scale web=1 --app #{@data.app}"


inDir = (dir, cb) ->
  newExecSync = (command) ->
    execSync "cd #{dir}; #{command}"
  cb(newExecSync)
