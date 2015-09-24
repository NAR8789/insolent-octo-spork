class AddArtistToComic < ActiveRecord::Migration
  def change
    add_reference :comics, :artist, index: true, foreign_key: true
  end
end
