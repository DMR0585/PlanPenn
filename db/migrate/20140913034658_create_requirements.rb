class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.decimal :credits
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
