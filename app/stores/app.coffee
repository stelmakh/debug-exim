ReactDOM    = require 'react-dom'
ReactRouter = require 'react-router'

module.exports = appStore = Exim.createStore
  path: 'app'
  actions: [
    'update'
  ]
  initial:
    color: '#000'

  update: (color) ->
    @set {color}
