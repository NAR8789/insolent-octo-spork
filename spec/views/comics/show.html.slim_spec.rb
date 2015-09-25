require 'rails_helper'

RSpec.describe "comics/show", type: :view do
  before(:each) do
    @comic = assign(:comic, Comic.create!(
      :name => "Name",
      :link => "Link",
      :artist => nil,
      :default_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
