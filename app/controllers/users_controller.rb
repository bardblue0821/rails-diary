class UsersController < ApplicationController
	def index
    # render plain: "Hello world!"
		@hello = 'Hello world!'
		render template: 'users/index'
  end
end
