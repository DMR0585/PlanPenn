class AddNameToCurriculumField < ActiveRecord::Migration
  def change
    add_column :curriculum_fields, :name, :string
  end
end
