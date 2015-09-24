# == Schema Information
#
# Table name: thumbnails
#
#  id                     :integer          not null, primary key
#  comic_id               :integer          not null
#  thumbnail_file_name    :string
#  thumbnail_content_type :string
#  thumbnail_file_size    :integer
#  thumbnail_updated_at   :datetime
#

class Thumbnail < ActiveRecord::Base
  belongs_to :comic
  has_attached_file :thumbnail

  validates :comic, presence: true
  validates_attachment :thumbnail, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
