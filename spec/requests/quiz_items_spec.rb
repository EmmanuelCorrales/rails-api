require 'rails_helper'

RSpec.describe "QuizItems", type: :request do

  describe "GET /quiz_items" do
    it "works! (now write some real specs)" do
      get quiz_items_path
      expect(response).to have_http_status(200)
    end
  end


  describe 'GET /quiz_items(:id)', type: :request do
		quiz_item = FactoryGirl.create :quiz_item
		headers  = { "ACCEPT": "application/json" }
		params   = { id: quiz_item.id }

		before { get quiz_item_path(quiz_item), headers: headers, params: params }

		it 'responds with a question' do
			expect(response.status).to eq(200)
		end
  end


	describe "POST /quiz_items", type: :request do
		headers  = { "ACCEPT": "application/json" }
		quiz_item = {
			question: "What is your name?",
			answer:  "Emmanuel Corrales"
		}
		params = { quiz_item: quiz_item }

		before { post quiz_items_path, headers: headers, params: params }

		it 'responds with SUCCESS' do
			expect(response).to have_http_status(:created)
		end
	end

	describe "PUT /quiz_items(:id)", type: :request do
		headers  = { "ACCEPT": "application/json" }
		quiz_item = FactoryGirl.create :quiz_item
		quiz_item.question = "Change the question?"
		quiz_item.answer  = "Yes"
		params = { quiz_item: quiz_item.attributes }

		before { put quiz_item_path(quiz_item), headers: headers, params: params }

		it "responds with SUCCESS" do
			expect(response.status).to eq(200)
		end
	end

	describe "DELETE /quiz_items(:id)", type: :request do
		headers  = { "ACCEPT": "application/json" }
		quiz_item = FactoryGirl.create :quiz_item

		before { delete quiz_item_path(quiz_item), headers: headers }

		it "responds with SUCCESS" do
			expect(response.status).to eq(204)
		end
	end

end
