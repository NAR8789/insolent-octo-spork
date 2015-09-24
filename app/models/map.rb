# == Schema Information
#
# Table name: maps
#
#  id            :integer          not null, primary key
#  center_radius :float            not null
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Map < ActiveRecord::Base
  belongs_to :user
  has_many :bubbles

  validates :user, presence: true, uniqueness: true
  validates :center_radius, presence: true
end
