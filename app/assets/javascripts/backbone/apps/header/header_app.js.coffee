@Demo.module "HeaderApp", (HeaderApp, App, BAckbone, Marionette, $, _) ->
  @startWithParent - false
  
  API =
    listHeader: ->
      HeaderApp.List.Controller.listHeader()
      
  HeaderApp.on "start", ->
    API.listHeader()
