# @cjsx React.DOM

layout = require('./layout.cjsx')

home = React.createClass
  render: ->
    <layout data={this.props} containerId="home" >
      <h1> Tile Thinger </h1>
      <p className="lead"></p>
      <hr />
    </layout>

module.exports = home
