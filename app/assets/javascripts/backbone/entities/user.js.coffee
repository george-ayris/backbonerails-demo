@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

	class Entities.User extends Entities.Model

	class Entities.UsersCollection extends Entities.Collection
		model: Entities.User
		url: -> Routes.users_path()

	API =
		setCurrentUser: (currentUser) ->
			new Entities.User currentUser

		getUserEntities: (cb) ->
			users = new Entities.UsersCollection
			users.fetch
				success: ->
					cb users

	Backbone.Radio.reply "global", "set:current:user", (currentUser) ->
		API.setCurrentUser currentUser

	Backbone.Radio.reply "global", "user:entities", (cb) ->
		API.getUserEntities cb
