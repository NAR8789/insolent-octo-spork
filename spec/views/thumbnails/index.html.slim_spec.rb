require 'rails_helper'

RSpec.describe "thumbnails/index", type: :view do
  before(:each) do
    assign(:thumbnails, [
      Thumbnail.create!(),
      Thumbnail.create!()
    ])
  end

  it "renders a list of thumbnails" do
    render
  end
end
