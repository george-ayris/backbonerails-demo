@Demo.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  
  class Show.Footer extends Marionette.ItemView
    template: "footer/show/templates/show_footer"
		
		modelEvents:
			"change sync" : "onChange"
			
		onChange: ->
			console.log "CHHANNNGGGEE"
			render
    
