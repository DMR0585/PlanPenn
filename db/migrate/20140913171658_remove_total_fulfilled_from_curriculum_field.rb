class RemoveTotalFulfilledFromCurriculumField < ActiveRecord::Migration
  def change
    remove_column :curriculum_fields, :total_fulfilled, :decimal
  end
end
