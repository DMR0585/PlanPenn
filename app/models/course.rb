class Course < ActiveRecord::Base
	belongs_to :pairing

	attr_accessible :name, :credits, :difficulty, :taken
end
