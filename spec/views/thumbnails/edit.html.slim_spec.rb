require 'rails_helper'

RSpec.describe "thumbnails/edit", type: :view do
  before(:each) do
    @thumbnail = assign(:thumbnail, Thumbnail.create!())
  end

  it "renders the edit thumbnail form" do
    render

    assert_select "form[action=?][method=?]", thumbnail_path(@thumbnail), "post" do
    end
  end
end
