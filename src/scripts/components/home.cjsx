# @cjsx React.DOM

layout = require('./layout.cjsx')
board = require('./board.cjsx')

home = React.createClass
  clearBoard: ->
    @refs.board.clearBoard()

  render: ->
    <layout data={this.props} containerId="home" >
      <board ref="board" />
      <button onClick={@clearBoard}>Clear Board</button>
    </layout>

module.exports = home
