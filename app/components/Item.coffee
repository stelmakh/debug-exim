appStore = require 'stores/app'
{div, span}  = Exim.DOM

Item = Exim.createView module.id,
  mixins: [appStore.connect('color')]

  render: ->
    {name, id} = @props
    {color} = @state
    console.log color
    style = {color} if color

    div key: id, style: style, className: 'item',
      span name

module.exports = Item
