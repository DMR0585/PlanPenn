class CurriculumField < ActiveRecord::Base
	has_many :requirements
	belongs_to :major

	attr_accessible :total_fulfilled, :total_required
end
