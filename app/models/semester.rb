class Semester < ActiveRecord::Base
	has_many :pairings
	belongs_to :all_year
end
