class AddColumnDataToDaycal < ActiveRecord::Migration[5.2]
  def change
      add_column :day_cals, :Day, :Date
      add_column :day_cals, :cal, :String
      add_column :day_cals, :item, :String
      add_column :day_cals, :user_id, :integer
  end
end
