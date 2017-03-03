require 'rails_helper'

RSpec.describe "Reports::Downloads", type: :request do
  describe "GET /reports_downloads" do
    it "works! (now write some real specs)" do
      get reports_downloads_path
      expect(response).to have_http_status(200)
    end
  end
end
