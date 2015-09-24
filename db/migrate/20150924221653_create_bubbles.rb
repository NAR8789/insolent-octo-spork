class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.float :radius, null: false
      t.float :position_r, null: false
      t.float :position_theta, null: false
      t.references :map, index: true, foreign_key: true, null: false
      t.references :thumbnail, index: true, foreign_key: true, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
