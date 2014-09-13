class CreateCurriculumFields < ActiveRecord::Migration
  def change
    create_table :curriculum_fields do |t|
      t.decimal :total_required

      t.timestamps
    end
  end
end
