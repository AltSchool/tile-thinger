data = window.colors # QUESTION: What's going on here?
data ?= []
rows = 10
columns = 10

BLANK_COLOR = '#ffffff'

unless window.colors
  for row in [0...rows]
    data.push []
    for column in [0...columns]
      data[row].push {color: BLANK_COLOR, isColored: false}

getRandomColor = ->
  letters = '0123456789ABCDEF'.split('')
  color = '#'
  for i in [0..5]
    color += letters[Math.floor(Math.random() * 16)];
  color

module.exports =
  BLANK_COLOR: BLANK_COLOR

  getColorData : -> data

  resetColor: (tile) ->
    tile.color = BLANK_COLOR
    tile.isColored = false

  makeColorful: (tile) ->
    color = getRandomColor()
    tile.color = color
    tile.isColored = true


