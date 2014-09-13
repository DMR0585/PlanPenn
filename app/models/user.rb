class User < ActiveRecord::Base
	has_many :majors
	has_one :all_year
	attr_accessible :name, :pennkey
end
