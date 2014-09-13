class Major < ActiveRecord::Base
	has_many :curriculum_fields
	belongs_to :user

	attr_accessible :total_required, :name

end
