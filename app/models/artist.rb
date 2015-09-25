# == Schema Information
#
# Table name: artists
#
#  id   :integer          not null, primary key
#  name :string           not null
#  link :string
#

class Artist < ActiveRecord::Base
  has_many :comics

  validates :name, presence: true, uniqueness: true

  def to_s
    self.name
  end
end
