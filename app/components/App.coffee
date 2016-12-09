Item = require 'components/Item'
Item2 = require 'components/Item2'
{div, span}  = Exim.DOM
appStore = require 'stores/app'

items = [
  {id: 1, name: 'first'}
  {id: 2, name: 'second'}
  {id: 3, name: 'third'}
]
App = Exim.createView module.id,
  updateColor: (color) -> =>
    appStore.actions.update(color)
  render: ->
    div className: 'app',
      span style: {marginRight: 20}, onClick: @updateColor('#f00'), 'red'
      span style: {marginRight: 20}, onClick: @updateColor('#0f0'), 'green'
      span style: {marginRight: 20}, onClick: @updateColor('#00f'), 'blue'

      div style: {marginTop: 20},
        span 'Using mixin'
        items.map (item) ->
          {id, name} = item
          Item {id, name}

      div style: {marginTop: 20},
        span 'Using onChange'
        items.map (item) ->
          {id, name} = item
          Item2 {id, name}


module.exports = App
