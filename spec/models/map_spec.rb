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

require 'rails_helper'

RSpec.describe Map, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
