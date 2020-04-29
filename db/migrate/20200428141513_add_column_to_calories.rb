class AddColumnToCalories < ActiveRecord::Migration[5.2]
  def change
    add_column :Calories, :Day, :Date
  end
end
