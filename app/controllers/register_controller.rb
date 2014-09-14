class RegisterController < ApplicationController
  def new
  	render "new"
  end

  def create
  	redirect_to controller: "user", action: "index" 
  end
end
