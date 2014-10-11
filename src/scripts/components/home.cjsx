# @cjsx React.DOM

layout = require('./layout.cjsx')
board = require('./board.cjsx')

home = React.createClass
  render: ->
    <layout data={this.props} containerId="home" >
      <h1> Tile Thinger </h1>
      <p className="lead"></p>
      <hr />
      <board />
    </layout>

module.exports = home
