class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.decimal :total_required

      t.timestamps
    end
  end
end
