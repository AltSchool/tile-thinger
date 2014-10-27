# @cjsx React.DOM

tile = React.createClass

  toggleColor: ->
    @props.onUpdate @props.row, @props.column # NOTE: Naming, `onUpdate` pretty generic

  render: ->
    <div className='tile' style={backgroundColor: @props.data.color} onClick={@toggleColor} >
    </div>

module.exports = tile
