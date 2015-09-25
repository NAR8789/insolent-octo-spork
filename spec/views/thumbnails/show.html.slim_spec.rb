require 'rails_helper'

RSpec.describe "thumbnails/show", type: :view do
  before(:each) do
    @thumbnail = assign(:thumbnail, Thumbnail.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
