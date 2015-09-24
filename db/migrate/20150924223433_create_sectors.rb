class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.references :map, index: true, foreign_key: true, null: false
      t.float :relative_size, null: false

      t.timestamps null: false
    end
  end
end
