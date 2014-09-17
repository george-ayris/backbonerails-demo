@Demo.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.User extends Entities.Model
		
	class Entities.UsersCollection extends Entities.Collection
		model: Entities.User
		
	API =
		setCurrentUser: (currentUser) ->
			new Entities.User currentUser
		
	Backbone.Radio.reply "global", "set:current:user", (currentUser) ->
		API.setCurrentUser currentUser