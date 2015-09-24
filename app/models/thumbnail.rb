# == Schema Information
#
# Table name: thumbnails
#
#  id                     :integer          not null, primary key
#  comic_id               :integer
#  thumbnail_file_name    :string
#  thumbnail_content_type :string
#  thumbnail_file_size    :integer
#  thumbnail_updated_at   :datetime
#

class Thumbnail < ActiveRecord::Base
  validates_presence_of :comic
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

  belongs_to :comic
  has_attached_file :avatar
end
