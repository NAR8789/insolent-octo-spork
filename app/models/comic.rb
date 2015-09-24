# == Schema Information
#
# Table name: comics
#
#  id                  :integer          not null, primary key
#  name                :string           not null
#  link                :string
#  default_description :text
#  artist_id           :integer
#

class Comic < ActiveRecord::Base
  belongs_to :artist
  has_many :thumbnails

  validates :name, :link, presence: true
  validates :name, uniqueness: {scope: :artist}
end
