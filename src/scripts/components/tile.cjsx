# @cjsx React.DOM

tile = React.createClass

  getRandomColor: ->
    letters = '0123456789ABCDEF'.split('')
    color = '#'
    for i in [0..5]
      color += letters[Math.floor(Math.random() * 16)];
    color

  getInitialState: ->
    style: { backgroundColor: '#ffffff'}, isColored: false

  toggleColor: ->
    if @state.isColored
      @setState style: { backgroundColor: '#ffffff'}, isColored: false
    else
      color = @getRandomColor()
      @setState style: {backgroundColor: color}, isColored: true

  render: ->
    <div className='tile' style={@state.style} onClick={@toggleColor} >
    </div>

module.exports = tile
