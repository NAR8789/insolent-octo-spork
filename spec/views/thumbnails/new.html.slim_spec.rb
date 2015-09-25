require 'rails_helper'

RSpec.describe "thumbnails/new", type: :view do
  before(:each) do
    assign(:thumbnail, Thumbnail.new())
  end

  it "renders new thumbnail form" do
    render

    assert_select "form[action=?][method=?]", thumbnails_path, "post" do
    end
  end
end
