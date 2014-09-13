class AddPairingIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :pairing_id, :integer
  end
end
