exports.npm =
  globals:
    React: 'react'
    Exim: 'exim'

exports.sourceMaps = false

exports.files =
  javascripts:
    joinTo:
      'app.js': /^app/
      'vendor.js': /^(?!app)/

  stylesheets:
    joinTo: 'app.css'

  templates:
    joinTo: 'app.js'
