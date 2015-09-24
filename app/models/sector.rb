# == Schema Information
#
# Table name: sectors
#
#  id            :integer          not null, primary key
#  map_id        :integer          not null
#  relative_size :float            not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name          :string           not null
#  description   :text
#

class Sector < ActiveRecord::Base
  belongs_to :map

  validates :relative_size, :map, :name, presence: true
  validates :name, uniqueness: {scope: :map}
end
