grunt = require('grunt')
_ = require('lodash')

module.exports.embedCSV = (path) ->
  csv = grunt.file.read(pathToFile(path, context.page))
  convertToTable(csv)

convertToTable = (csv) ->
  csvElements = _.map _.filter(csv.split("\n"), _.isBlank), (row) ->
    row.split ','
  head = "<tr><td>#{_.head(csvElements).join('</td><td>')}</td></tr>"

  body = _(csvElements)
    .tail()
    .map (row, i) ->
      "<tr><td>#{row.join('</td><td>')}</td></tr>"
    .value()

  """
  <table class="table table-bordered table-hover">
    <tbody>
      #{head}
      #{body.join('')}
    </tbody>
  </table>
  """

pathToFile = (path, page) ->
  dir = page.src
    .replace(page.basename, '')
    .replace(/\.[^.]+/, '')

  "#{dir}/#{page.basename}/#{path}"