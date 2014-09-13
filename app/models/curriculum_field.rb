class CurriculumField < ActiveRecord::Base
	attr_accessor :total_fulfilled, :total_required
	has_many :requirements
	belongs_to :major


end
