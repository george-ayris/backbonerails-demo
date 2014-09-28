@Demo.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

    class List.LayoutView extends App.Views.LayoutView
        template: "users/list/templates/list_layout"
