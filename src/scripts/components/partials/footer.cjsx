# @cjsx React.DOM

footer = React.createClass
  render: ->
    <footer>
      <div className="container text-center">
        <p className="pull-left"> © 2014 Matt Blair All Rights Reserved</p>
        <ul className="pull-right list-inline">
          <li>
            <a href='https://github.com/duereg/tile-thinger'>GitHub Project</a>
          </li>
        </ul>
      </div>
    </footer>

module.exports = footer
