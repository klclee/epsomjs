#=require lib/foundation/foundation.js
#=require_tree lib/foundation
#=require lib/handlebars.js
#=require lib/ember.js

$ ->
  window.App = Ember.Application.create()

  App.Router.map ->
    @resource 'home'