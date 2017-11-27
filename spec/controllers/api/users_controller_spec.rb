require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  include AuthHelper

  let(:user) { FactoryGirl.create(:user) }

  let(:json) { JSON.parse(response.body) }

  describe "GET index" do
    before do
      http_login
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "responds with json" do
      get :index
      expect(response.content_type).to eq("application/json")
    end

  end

   # SAVE for Checkpoint 4
   #  describe "POST create" do

   #    it "creates a new user" do
   #      expect{
   #        post :create, params: { user: new_user_attributes }
   #      }.to change(User, :count).by(1)
   #    end

   #    it "sets user name properly" do
   #      post :create, params: { user: new_user_attributes }
   #      expect(assigns(:user).name).to eq new_user_attributes[:name]
   #    end

   #    it "sets user email properly" do
   #      post :create, params: {user: new_user_attributes }
   #      expect(assigns(:user).email).to eq new_user_attributes[:email]
   #    end

   #    it "sets user password properly" do
   #     post :create, params: { user: new_user_attributes }
   #     expect(assigns(:user).password).to eq new_user_attributes[:password]
   #   end

   # end


end
