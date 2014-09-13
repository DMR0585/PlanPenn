class Major < ActiveRecord::Base
	attr_accessor :total_required, :name
	has_many :curriculum_fields
	belongs_to :user

	

end
