require 'rails_helper'

RSpec.describe "comics/new", type: :view do
  before(:each) do
    assign(:comic, Comic.new(
      :name => "MyString",
      :link => "MyString",
      :artist => nil,
      :default_description => "MyText"
    ))
  end

  it "renders new comic form" do
    render

    assert_select "form[action=?][method=?]", comics_path, "post" do

      assert_select "input#comic_name[name=?]", "comic[name]"

      assert_select "input#comic_link[name=?]", "comic[link]"

      assert_select "input#comic_artist_id[name=?]", "comic[artist_id]"

      assert_select "textarea#comic_default_description[name=?]", "comic[default_description]"
    end
  end
end
