class AddTotalFulfilledToCurriculumField < ActiveRecord::Migration
  def change
    add_column :curriculum_fields, :total_fulfilled, :decimal
  end
end
