class CurriculumField < ActiveRecord::Base
	has_many :requirements
	belongs_to :major


end
