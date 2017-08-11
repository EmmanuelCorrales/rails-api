require 'rails_helper'

RSpec.describe "QuizItems", type: :request do
  describe "GET /quiz_items" do
    it "works! (now write some real specs)" do
      get quiz_items_path
      expect(response).to have_http_status(200)
    end
  end
end
