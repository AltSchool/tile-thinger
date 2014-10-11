Mark this file for JSX:

    `/** @jsx React.DOM */`

If compiling for production, require React using native React minified package, since it also excludes debug calls:

    if __PRODUCTION__
      require("script!react/react-with-addons.min.js")

Otherwise, require React development package:

    else
      require("script!react/react-with-addons.js")

**NB**: `__PRODUCTION__` is a variable defined using webpack `DefinePlugin`, it is substituted with its boolean value
before evaluation. The dead `if ... else` branch is eliminated during minification.

Require app:

    StarterApp = require('./components/home.cjsx')

Render app:

    githubUrl = 'https://github.com/glebm/gulp-webpack-react-bootstrap-sass-template'
    React.renderComponent(`<StarterApp githubUrl={githubUrl}/>`, document.getElementById('app'))

