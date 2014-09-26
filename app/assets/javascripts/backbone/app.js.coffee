@Demo = do (Backbone, Marionette) ->

	Backbone.Radio.DEBUG = true
	#Backbone.Radio.tuneIn "global"

	App = new Marionette.Application

	App.rootRoute = "users"

	App.on "before:start", (options) ->
		@currentUser = Backbone.Radio.request "global", "set:current:user", options.currentUser

	Backbone.Radio.reply "global", "get:current:user", ->
		App.currentUser

	App.addRegions
		headerRegion: "#header-region"
		mainRegion: "#main-region"
		footerRegion: "#footer-region"

	App.addInitializer ->
		App.module("FooterApp").start()
		App.module("HeaderApp").start()

	App.on "start", ->
		if Backbone.history
			Backbone.history.start()
			@navigate(@rootRoute, trigger: true) if @getCurrentRoute() is ""
			
	App
