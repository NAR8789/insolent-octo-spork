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

require 'rails_helper'

RSpec.describe Bubble, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
