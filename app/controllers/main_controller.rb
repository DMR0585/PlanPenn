class MainController < ApplicationController
  def index
  	@user = User.find(0)
  	@major = @user.major
  	@fields = @major.curriculum_fields
  	
  end
end
