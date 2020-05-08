class CreateGraffs < ActiveRecord::Migration[5.2]
  def change
    create_table :graffs do |t|
      t.date :Day
      t.integer :sumcal

      t.timestamps
    end
  end
end
