class AddAttachmentThumbnailToThumbnails < ActiveRecord::Migration
  def self.up
    change_table :thumbnails do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :thumbnails, :thumbnail
  end
end
