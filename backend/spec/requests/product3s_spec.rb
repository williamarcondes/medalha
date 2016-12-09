require 'rails_helper'

RSpec.describe "Product3s", type: :request do
  describe "GET /product3s" do
    it "works! (now write some real specs)" do
      get product3s_path
      expect(response).to have_http_status(200)
    end
  end
end
