Exim = require('exim')
App = require 'components/App'
{useRouterHistory}   = require('react-router')
hist                 = require('history')
historyType          = hist["createHashHistory"]

{Router, Route} = Exim.Router

Exim.Router.mount = (name) ->
  name = name.charAt(0).toUpperCase() + name.slice(1)
  require("components/#{name}")().type

module.exports = Router history: useRouterHistory(historyType)(queryKey: false, parseQueryString: true),
    Route path: '/', component: Exim.Router.mount('app')
