require 'rails_helper'

RSpec.describe "BoardingDocuments", type: :request do
  describe "GET /boarding_documents" do
    it "works! (now write some real specs)" do
      get boarding_documents_path
      expect(response).to have_http_status(200)
    end
  end
end
