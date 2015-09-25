require 'rails_helper'

RSpec.describe "Thumbnails", type: :request do
  describe "GET /thumbnails" do
    it "works! (now write some real specs)" do
      get thumbnails_path
      expect(response).to have_http_status(200)
    end
  end
end
