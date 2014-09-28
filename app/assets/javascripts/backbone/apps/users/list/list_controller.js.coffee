@Demo.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

    List.Controller =

        listUsers: ->
            users = Backbone.Radio.request "global", "user:entities"

            @usersLayout = @getLayoutView()

            App.mainRegion.show @usersLayout

        getLayoutView: ->
            new List.LayoutView
