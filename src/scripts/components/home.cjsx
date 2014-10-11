# @cjsx React.DOM

layout = require('./layout.cjsx')
board = require('./board.cjsx')
superagent = require('superagent')

home = React.createClass
  clearBoard: ->
    @refs.board.clearBoard()

  saveBoard: ->
    board = @refs.board
    me = @

    superagent
      .post '/colors'
      .send { colors: board.data, id: @id }
      .set 'Accept', 'application/json'
      .end (error, res) ->
        body = res.body
        history.pushState(body, "Colors", body._id)
        me.id = body._id

  render: ->
    <layout data={this.props} containerId="home" >
      <board ref="board" />
      <button onClick={@clearBoard}>Clear Board</button>
      <button onClick={@saveBoard}>Save Board</button>
    </layout>

module.exports = home
