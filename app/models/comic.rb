# == Schema Information
#
# Table name: comics
#
#  id                  :integer          not null, primary key
#  name                :string
#  link                :string
#  default_description :string
#  artist_id           :integer
#


class Comic < ActiveRecord::Base
  validates_presence_of :name, :link
  validates_uniqueness_of :name, scope: :artist

  belongs_to :artist
  has_many :thumbnails
end
