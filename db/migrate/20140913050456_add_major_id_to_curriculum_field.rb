class AddMajorIdToCurriculumField < ActiveRecord::Migration
  def change
    add_column :curriculum_fields, :major_id, :integer
  end
end
