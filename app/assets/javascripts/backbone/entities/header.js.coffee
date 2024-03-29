@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.Header extends Entities.Model

	class Entities.HeaderCollection extends Entities.Collection
		model: Entities.Header

	API =
		getHeaders: ->
			new Entities.HeaderCollection [
				{ name: "Users", url: Routes.users_path() }
				{ name: "Leads", url: "leads" }
				{ name: "Apppointments", url: "appointments" }
			]

	Backbone.Radio.reply "global", "header:entities", ->
		API.getHeaders()
