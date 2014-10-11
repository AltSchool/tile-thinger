# @cjsx React.DOM

tile = require('./tile.cjsx')

data = []
rows = 10
columns = 10

for row in [0...rows]
  data.push []
  for column in [0...columns]
    data[row].push {color: '#ffffff', isColored: false}

board = React.createClass

  data: data

  getRandomColor: ->
    letters = '0123456789ABCDEF'.split('')
    color = '#'
    for i in [0..5]
      color += letters[Math.floor(Math.random() * 16)];
    color

  clearBoard: ->
    for row in data
      for column in row
        column.color = '#ffffff'
        column.isColored = false

    @forceUpdate()

  updateBoard: (row, column) ->
    colorData = data[row][column]

    if colorData.isColored
      colorData.color = '#ffffff'
      colorData.isColored = false
    else
      color = @getRandomColor()
      colorData.color = color
      colorData.isColored = true

    @forceUpdate()

  render: ->
    <div id='board'>
      {for row, rowIndex in data
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
