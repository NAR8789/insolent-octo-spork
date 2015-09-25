# == Schema Information
#
# Table name: comics
#
#  id                  :integer          not null, primary key
#  name                :string           not null
#  link                :string
#  default_description :text
#  artist_id           :integer
#

require 'rails_helper'

RSpec.describe Comic, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
