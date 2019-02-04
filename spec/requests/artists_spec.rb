require 'rails_helper'

RSpec.describe "Artists", type: :request do
  describe "GET /artists" do
    it "JSON OK" do
    	get "/api/v1/artists/"
      	expect(response.content_type).to eq("application/json")
    end
  end
end