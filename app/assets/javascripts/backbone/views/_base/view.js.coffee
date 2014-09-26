@Demo.module "Views",  (Views, App, Backbone, Marionette, $, _) ->

    _.extend Marionette.View::,

        templateHelpers: ->

            currentUser:
                Backbone.Radio.request "global", "get:current:user"
                    .toJSON()
