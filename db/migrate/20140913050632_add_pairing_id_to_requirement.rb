class AddPairingIdToRequirement < ActiveRecord::Migration
  def change
    add_column :requirements, :pairing_id, :integer
  end
end
