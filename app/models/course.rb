class Course < ActiveRecord::Base
	attr_accessor :name, :credits, :difficulty, :taken
	belongs_to :pairing


end
