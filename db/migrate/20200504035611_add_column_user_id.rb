class AddColumnUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :Calories, :user_id, :integer
  end
end
