# == Schema Information
#
# Table name: bubbles
#
#  id             :integer          not null, primary key
#  radius         :float            not null
#  position_r     :float            not null
#  position_theta :float            not null
#  map_id         :integer          not null
#  thumbnail_id   :integer          not null
#  description    :text             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Bubble < ActiveRecord::Base
  belongs_to :map
  belongs_to :thumbnail
  has_one :comic, through: :thumbnail

  validates :map, :thumbnail, :radius, :position_r, :position_theta, :description, presence: true
  validates :comic, uniqueness: {scope: :map}
end
