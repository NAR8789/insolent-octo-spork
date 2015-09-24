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

require 'rails_helper'

RSpec.describe Sector, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
