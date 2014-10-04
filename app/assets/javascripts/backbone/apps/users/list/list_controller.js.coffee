@Demo.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

    List.Controller =

        listUsers: ->
            Backbone.Radio.request "global", "user:entities", (users) =>

                @usersLayout = @getLayoutView()

                @usersLayout.on "show", =>
                    @showPanel users
                    @showUsers users

                App.mainRegion.show @usersLayout

        showPanel: (users) ->
            panelView = @getPanelView users
            @usersLayout.panelRegion.show panelView

        showUsers: (users) ->
            usersView = @getUsersView users
            @usersLayout.usersRegion.show usersView

        getPanelView: (users) ->
            new List.Panel
                collection: users

        getUsersView: (users) ->
            new List.Users
                collection: users

        getLayoutView: ->
            new List.LayoutView
