class CreateAllYears < ActiveRecord::Migration
  def change
    create_table :all_years do |t|

      t.timestamps
    end
  end
end
