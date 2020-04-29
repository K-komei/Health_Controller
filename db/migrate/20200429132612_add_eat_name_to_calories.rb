class AddEatNameToCalories < ActiveRecord::Migration[5.2]
  def change
    add_column :Calories, :item, :String
  end
end
