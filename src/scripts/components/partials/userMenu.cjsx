# @cjsx React.DOM

userMenu = React.createClass
  render: ->
    {menu, picture} = {}

    menu = <span> foo </span>

    <ul className="nav navbar-nav navbar-right">
      {menu}
    </ul>

module.exports = userMenu
