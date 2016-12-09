appStore = require 'stores/app'
{div, span}  = Exim.DOM

Item = Exim.createView module.id,
  # mixins: [appStore.connect('color')]

  getInitialState: ->
    color: ''

  componentWillMount: ->
    appStore.onChange @updateState
  componentWillUnmount: ->
    appStore.offChange @updateState

  updateState: ->
    if @isMounted
      color = appStore.get('color')
      @setState {color}

  render: ->
    {name, id} = @props
    {color} = @state
    console.log color
    style = {color} if color

    div key: id, style: style, className: 'item',
      span name

module.exports = Item
