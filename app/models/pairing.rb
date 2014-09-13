class Pairing < ActiveRecord::Base
	has_one :requirement
	has_one :course
	belongs_to :semester
end
