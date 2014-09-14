class RemoveFulfilledFromRequirements < ActiveRecord::Migration
  def change
    remove_column :requirements, :fulfilled, :boolean
  end
end
