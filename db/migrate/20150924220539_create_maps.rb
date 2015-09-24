class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.float :center_radius
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
