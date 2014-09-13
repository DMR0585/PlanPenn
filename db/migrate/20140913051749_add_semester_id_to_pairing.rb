class AddSemesterIdToPairing < ActiveRecord::Migration
  def change
    add_column :pairings, :semester_id, :integer
  end
end
