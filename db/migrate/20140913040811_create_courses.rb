class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.decimal :credits
      t.decimal :difficulty
      t.boolean :taken

      t.timestamps
    end
  end
end
