# @cjsx React.DOM

tile = require('./tile.cjsx')

board = React.createClass
  render: ->
    rows = 10
    columns = 10

    <div id='board'>
      {for row in [0..rows]
        <div className='row'>
          {for column in [0..columns]
            <div className='column'>
              <tile />
            </div>
          }
        </div>
      }
    </div>

module.exports = board
