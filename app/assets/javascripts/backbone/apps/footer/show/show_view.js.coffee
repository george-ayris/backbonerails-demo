@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

    class Show.Footer extends Marionette.ItemView
        template: "footer/show/templates/show_footer"

        modelEvents:
            "all" : "log"
            "change" : "render"

        log: (e) -> 
            console.log e
