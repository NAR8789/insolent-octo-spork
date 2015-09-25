class CreateComic < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name, null: false
      t.string :link
      t.text :default_description
    end
  end
end
