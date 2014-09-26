@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  # Prevents auto start with application
  @startWithParent = false

  API =
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  FooterApp.on "start", ->
    API.showFooter()
