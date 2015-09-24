# == Schema Information
#
# Table name: artists
#
#  id   :integer          not null, primary key
#  name :string
#  link :string
#


class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :comics
end
