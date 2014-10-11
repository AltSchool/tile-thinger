# @cjsx React.DOM

tile = React.createClass

  getInitialState: ->
    style: { color: '#000000'}

  onClick: ->

  render: ->
    <div className='tile' style={this.state.style} >
    </div>

module.exports = tile
