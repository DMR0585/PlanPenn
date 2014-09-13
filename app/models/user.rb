class User < ActiveRecord::Base
	has_many :majors
	has_one :all_year

end
