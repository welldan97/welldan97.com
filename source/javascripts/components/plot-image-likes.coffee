SELECTOR = '.plot-image-likes'
IMAGE_SIZE = 30

AXIS_SIZE =
  left: 60
  bottom: 30
  right: 5
  top: 5

AXIS_LABEL_TRANSLATE =
  left:   [-15, 15]
  bottom: [10, 30]

main = ->
  d3options = prepareD3(SELECTOR)
  # getData (data) ->
    # render(data, d3options)

prepareD3 = (selector)->
  margin =
    top: IMAGE_SIZE/2
    right: IMAGE_SIZE/2
    bottom: IMAGE_SIZE/2 + AXIS_SIZE.bottom + AXIS_SIZE.top
    left: IMAGE_SIZE/2 + AXIS_SIZE.left + AXIS_SIZE.right

  svgObject = w97.plot.appendTo(selector, margin: margin)

  x = d3.scale.linear().range([0, svgObject.width])
  y = d3.scale.linear().range([svgObject.height, 0])

  drawAxises svgObject, 'time', 'likes',
    margin: margin
    axisSize: AXIS_SIZE

  svg: svg, x: x, y: y

drawAxises = (svgObject, left, bottom, options) ->
  { svg: svg, width: width, height: height } = svgObject
  margin = options.margin
  axisSize = options.axisSize

  if left?
    svg
      .append('line')
      .attr('x1', -margin.left + axisSize.left)
      .attr('y1',height + margin.bottom - axisSize.bottom)
      .attr('x2', -margin.left + axisSize.left)
      .attr('y2',0)
      .attr('class', 'axis')

    svg
      .append('text')
      .attr('x', -margin.left + axisSize.left)
      .attr('y', 0)
      .attr('class', 'axis-text left')
      .attr('transform', "translate(#{AXIS_LABEL_TRANSLATE.left.join(', ')})")
      .text(left)

  if bottom?
    svg
      .append('line')
      .attr('x1', -margin.left + axisSize.left)
      .attr('y1',height + margin.bottom - axisSize.bottom)
      .attr('x2',width)
      .attr('y2',height + margin.bottom - axisSize.bottom)
      .attr('class', 'axis')

    svg
      .append('text')
      .attr('x', width)
      .attr('y', height + margin.bottom - axisSize.bottom)
      .attr('class', 'axis-text bottom')
      .attr('transform', "translate(#{AXIS_LABEL_TRANSLATE.bottom.join(',')})")
      .text(bottom)


render = (data, d3options) ->
  { svg: svg, x: x, y: y } = d3options

  x.domain(d3.extent(data, (d) -> d.createdTime))#.nice()
  y.domain(d3.extent(data, (d) -> d.likes))#.nice()

  svg
    .selectAll('.image')
    .data(data)
    .enter()
    .append('foreignObject')
    .attr('width', IMAGE_SIZE)
    .attr('height', IMAGE_SIZE)
    .attr 'class', (d) ->
      "image image-#{d.createdTime}"
    .attr 'x', (d) ->
      (x d.createdTime) - IMAGE_SIZE/2
    .attr 'y', (d) ->
      (y d.likes) - IMAGE_SIZE/2

  line = d3
    .svg
    .line()
    .interpolate('basis')
    .x (d) ->
      x d.createdTime
    .y (d) ->
      y d.loess
  loessData = _.reject data, (d, i)->
    return (d.score == 0) || (i % 3 > 0)

  svg
    .append('path')
    .attr('d', line(loessData))
    .attr('class', 'one')

main()
