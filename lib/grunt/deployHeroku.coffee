execSync = require('exec-sync')

module.exports = (grunt) ->
  grunt.registerMultiTask 'deployHeroku',
    'Deploy to Heroku',
    ->
      throw new Error('Please specify "cwd"') unless @data.cwd

      inDir @data.cwd, (execSync)->
        execSync "git init"
        execSync "git add -A"
        execSync "git commit -m 'Deploy to Heroku'"
        # TODO add heroku origin
        # TODO push

inDir = (dir, cb) ->
  newExecSync = (command) ->
    execSync "cd #{dir};#{command}"
  cb(newExecSync)
