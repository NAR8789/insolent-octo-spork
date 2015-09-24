class CreateComic < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name
      t.string :link
      t.string :default_description
    end
  end
end
