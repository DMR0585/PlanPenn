class Major < ActiveRecord::Base
	has_many :curriculum_fields

	attr_accessible :total_required, :name
end
