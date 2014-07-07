window.w97 = {} unless window.w97?

_.merge window.w97,
  plot:
    options:
      ratio: 1/2

    appendTo: (selector, options) ->
      margin = options.margin

      rawWidth = +$(selector).width()
      width = rawWidth
      height = @options.ratio * rawWidth

      innerWidth = width - margin.left - margin.right
      innerHeight = height - margin.top - margin.bottom

      svg = d3
        .select(selector)
        .append('svg')
        .attr('width', width)
        .attr('height', height)

      @markerGost(svg)

      svgG = svg
        .append('g')
        .attr('transform', "translate(#{margin.left},#{margin.top})")

      svg: svgG, width: innerWidth, height: innerHeight

    markerGost: (svg) ->
      svg
        .append('defs')
        .append('marker')
        .attr('class','marker-gost')
        .attr('id','marker-gost')
        .attr('orient','auto')
        .attr('markerWidth', 11.3)
        .attr('markerHeight', 4)
        .attr('refX', 8)
        .attr('refY', 2)
        .append('path')
        .attr('d', 'M0,0 L2,2 L0,4 L11.3,2 Z')
