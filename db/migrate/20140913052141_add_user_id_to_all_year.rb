class AddUserIdToAllYear < ActiveRecord::Migration
  def change
    add_column :all_years, :user_id, :integer
  end
end
