require 'rails_helper'

RSpec.describe "comics/index", type: :view do
  before(:each) do
    assign(:comics, [
      Comic.create!(
        :name => "Name",
        :link => "Link",
        :artist => nil,
        :default_description => "MyText"
      ),
      Comic.create!(
        :name => "Name",
        :link => "Link",
        :artist => nil,
        :default_description => "MyText"
      )
    ])
  end

  it "renders a list of comics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
