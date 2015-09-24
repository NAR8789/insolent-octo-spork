# == Schema Information
#
# Table name: maps
#
#  id            :integer          not null, primary key
#  center_radius :float
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Map < ActiveRecord::Base
  belongs_to :user
  has_many :bubbles

  validates :user, :center_radius, presence: true, uniqueness: true
  validates :center_radius, presence: true
end
