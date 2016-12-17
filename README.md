Rails Angular start app
=======================
This app aims to be a starting point for web applications based on Ruby on Rails with an AngularJS frontend. View/controller management in Angular is handled by [ui-router](https://github.com/angular-ui/ui-router). JSON responses are handled through [ActiveModel Serializers](https://github.com/rails-api/active_model_serializers) (tutorial on AM Serializers from Railscasts [here](http://railscasts.com/episodes/409-active-model-serializers)). Documentation for using this as a viable and replicable project forthcoming.

Rails Components
----------------
### Authentication
- uses bcrypt `has_secure_password`
- sessions controller with new, create and destroy actions
	- current user stored via `current_user_id` cookie
- standard `current_user`, `authorize`, and `signed_in?` helpers available to all controllers (and in views)
- comes with default login view (through rails template, not Angular template)

__Starter app for creating a Rails and AngularJS application. Includes:__
- User Model
- Log in/authentication (rails sessions controller)
	- done with rails views and normal server side validation, not through AngularJS (_mostly because I haven't had time to deep dive in to the security concerns when implementing a sign in system via Angular_)
- Static pages controller

### Implementation details related to AngularJS
- ActiveModel Serializers configuration
- AngularJS 1.2.4
- ui-router setup
	- `app.js.coffee` is the file for `ui-router` state configuraiton
- Bootstrap installation
- [ui-bootstrap](http://angular-ui.github.io/bootstrap/)
- proper includes in application.js
- creation of separate AngularJS folders (like templates, controllers, factories, filters, etc.)
	- includes eponymous files that are used a 'importation modules' for global versions of each of these concerns (and to include their more specified counterparts).

### Other Front-End stuff
- Trying out using [Bourban](http://bourbon.io) mixins with SASS in order to cut down on my need for vendor prefixes
- Trying out [Jade](http://jade-lang.com) for the Angular driven-templates. For Rails integration, see [this gem](https://github.com/inossidabile/jade)

