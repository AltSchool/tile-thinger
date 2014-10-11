# @cjsx React.DOM

navbar = require('./partials/navbar.cjsx')
myFooter = require('./partials/footer.cjsx')

layout = React.createClass
  render: ->
    mainContainer = this.props.containerId if this.props.containerId?

    <div>
      <navbar data={this.props.data} />
      <div id={mainContainer} className='container'>
        {this.props.children}
      </div>
      <myFooter />
    </div>

module.exports = layout
