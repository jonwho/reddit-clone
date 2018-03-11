require 'rails_helper'

RSpec.describe V1::UsersController, type: :controller do
  describe "GET #create" do
    it "returns http success" do
      post :create, params: { username: 'jonwho', password: '12341234' }
      expect(response).to have_http_status(:success)
    end
  end
end
