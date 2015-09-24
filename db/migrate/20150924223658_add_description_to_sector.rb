class AddDescriptionToSector < ActiveRecord::Migration
  def change
    add_column :sectors, :name, :string, null: false
    add_index :sectors, :name, unique: true
    add_column :sectors, :description, :text
  end
end
