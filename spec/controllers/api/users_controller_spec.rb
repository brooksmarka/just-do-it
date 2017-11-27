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


  describe "POST create" do
    it "creates a new user" do
      expect{
        post :create, params: { user: user }
        }.to change(User, :count).by(1)
    end

  end


end
