ReactDOM    = require 'react-dom'
ReactRouter = require 'react-router'

document.addEventListener 'DOMContentLoaded', =>
  console.log 'sup'
  Routes = require('routes')
  parent = document.querySelector('#app-outer') or document.body
  ReactDOM.render Routes, parent
