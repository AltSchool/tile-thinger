# @cjsx React.DOM

tile = require('./tile.cjsx')
palette = require('./palette.coffee')

data = palette.getColorData()

board = React.createClass

  data: data

  clearBoard: ->
    for row in @data
      for column in row
        column.color = palette.BLANK_COLOR
        column.isColored = false # QUESTION: What's another way that you could have `isColored` without setting it yourself. Also, is it used anywhere?

    @forceUpdate()

  updateBoard: (row, column) ->
    currentTile = @data[row][column]

    if currentTile.isColored
      palette.resetColor currentTile
    else
      palette.makeColorful currentTile

    @forceUpdate()

  render: ->
    <div id='board'>
      {for row, rowIndex in @data
        <div key={'row' + rowIndex} className='row'>
          {for column, columnIndex in row
            <div key={'column' + columnIndex}  className='col-xs-1'>
              <tile key={'tile' + rowIndex + ':' + columnIndex} row={rowIndex} column={columnIndex} data={column} onUpdate={@updateBoard} />
            </div>
          }
        </div>
      }
    </div>

module.exports = board
