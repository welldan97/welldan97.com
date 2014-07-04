module.exports.tabPane = (options) ->
  tab = context.activeTabPanes.tabs[context.activeTabPanes.tabCounter]
  active = if (context.activeTabPanes.tabCounter == 0)
    ' active'
  else
    ''

  context.activeTabPanes.tabCounter++
  """
  <div class="tab-pane#{active}" id="#{context.normalizeHTML(tab)}">
    #{options.fn(this)}
  </div>
  """
