class User < ActiveRecord::Base
	attr_accessor :name, :pennkey
	has_many :majors
	has_one :all_year

end
