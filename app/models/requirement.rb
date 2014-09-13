class Requirement < ActiveRecord::Base
	attr_accessor :name, :credits
	belongs_to :curriculum_field
	belongs_to :pairing


end
