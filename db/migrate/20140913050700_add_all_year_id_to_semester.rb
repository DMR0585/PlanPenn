class AddAllYearIdToSemester < ActiveRecord::Migration
  def change
    add_column :semesters, :all_year_id, :integer
  end
end
