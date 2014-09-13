class Requirement < ActiveRecord::Base
	belongs_to :curriculum_field
	belongs_to :pairing

	attr_accessible :name, :credits, :fulfilled
end
