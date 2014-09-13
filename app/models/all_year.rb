class AllYear < ActiveRecord::Base
	has_many :semesters
	belongs_to :user
end
