window.InternMe =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    Backbone.history.start
      pushState: true

$(document).ready ->
  InternMe.initialize()
