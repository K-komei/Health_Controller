class AddCalToPriset < ActiveRecord::Migration[5.2]
  def change
    remove_column :presets, :Item
    add_column :presets, :item, :string
    
  end
end
