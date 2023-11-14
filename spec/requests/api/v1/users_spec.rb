require 'rails_helper'

RSpec.describe "/api/v1/users", type: :request do

  describe "GET /index" do
    context "when request is a search with filled name" do
      it "renders a successful response with the only searched name user" do
        user_to_find = {name: 'user_to_find', email: 'teste@teste.com', password: '123456' }
        user_to_not_find = {name: 'user_to_not_find', email: 'teste2@teste.com', password: '123456'}
        User.create!(user_to_find)
        User.create!(user_to_not_find)

        get api_v1_users_url(params: { api_v1_user: { name: 'user_to_find' } }), headers: {}, as: :json
        expect(response).to be_successful

        expect(JSON.parse(response.body).size).to be 1 
      end
    end

    context "when request is a unfilled name search" do
      it "renders a successful response with the all users" do
        user_to_find = {name: 'user1', email: 'teste@teste.com', password: '123456' }
        user_to_not_find = {name: 'user2', email: 'teste2@teste.com', password: '123456'}
        User.create!(user_to_find)
        User.create!(user_to_not_find)

        get api_v1_users_url(params: { api_v1_user: { name: "" } }), headers: {}, as: :json
        expect(response).to be_successful

        expect(JSON.parse(response.body).size).to be 2 
      end
    end
  end
end
