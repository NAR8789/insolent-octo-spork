# == Schema Information
#
# Table name: artists
#
#  id   :integer          not null, primary key
#  name :string
#  link :string
#


class Artist < ActiveRecord::Base
  has_many :comics

  validates :name, presence: true, uniqueness: true
end
