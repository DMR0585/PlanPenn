class AddUserIdToMajor < ActiveRecord::Migration
  def change
    add_column :majors, :user_id, :integer
  end
end
