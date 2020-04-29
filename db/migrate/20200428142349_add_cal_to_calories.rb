class AddCalToCalories < ActiveRecord::Migration[5.2]
  def change
    add_column :Calories, :cal, :integer
  end
end
