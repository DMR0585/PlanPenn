class AddCurriculumFieldIdToRequirement < ActiveRecord::Migration
  def change
    add_column :requirements, :curriculum_field_id, :integer
  end
end
