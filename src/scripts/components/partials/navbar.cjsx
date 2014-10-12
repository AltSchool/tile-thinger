# @cjsx React.DOM

navBar = React.createClass
  render: ->
    <div className="navbar navbar-default navbar-fixed-top">
      <div className="container">
        <div className="navbar-header">
          <button type="button" data-toggle="collapse" data-target=".navbar-collapse" className="navbar-toggle">
            <span className="sr-only">Toggle navigation</span>
            <span className="icon-bar"></span>
            <span className="icon-bar"></span>
            <span className="icon-bar"></span>
          </button>
          <a href="/" className="navbar-brand">
            <span className="ion-ios7-stopwatch-outline"></span>
            Tile Thinger
          </a>
        </div>
        <div className="collapse navbar-collapse">
        </div>
      </div>
    </div>

module.exports = navBar

