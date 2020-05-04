class CreateDayCals < ActiveRecord::Migration[5.2]
  def change
    create_table :day_cals do |t|

      t.timestamps
    end
  end
end
