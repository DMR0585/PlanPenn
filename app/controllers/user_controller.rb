class UserController < ApplicationController
	before_action :authenticate_user!
	def index
		redirect_to '/main/index.html'
	end

	def login
	end
end
