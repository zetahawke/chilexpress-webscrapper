require 'rails_helper'

RSpec.describe "Offices", type: :request do
  describe "GET /offices" do
    it "works! (now write some real specs)" do
      get offices_path
      expect(response).to have_http_status(200)
    end
  end
end
