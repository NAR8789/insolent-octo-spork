# == Schema Information
#
# Table name: thumbnails
#
#  id       :integer          not null, primary key
#  comic_id :integer
#


class Thumbnail < ActiveRecord::Base
  validates_presence_of :comic

  belongs_to :comic
end
