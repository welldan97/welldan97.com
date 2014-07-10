module.exports.tabPanes = (tabs..., options) ->
  context.activeTabPanes = tabs: tabs, tabCounter: 0
  tabsHTML = tabs
    .map (tab, i) ->
      active = if (i == 0)
        ' class="active"'
      else
        ''

      """
      <li#{active}>
        <a href="##{context.normalizeHTML(tab)}"
           role="tab"
           data-toggle="tab">
             #{tab}
        </a>
      </li>
      """
    .join('')


  """
  <ul class="nav nav-tabs" role="tablist">
    #{tabsHTML}
  </ul>
  <div class="tab-content">
    #{options.fn(this)}
  </div>
  """
