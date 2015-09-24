class IndexComicsByTitleAndArtist < ActiveRecord::Migration
  def change
    add_index :comics, [:name, :artist_id], :unique => true
  end
end
