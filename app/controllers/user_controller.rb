class UserController < ApplicationController
	def index
	end

	def login
	redirect_to controller: "main", action: "index"	
	end
end
