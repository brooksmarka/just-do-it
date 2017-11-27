require 'rails_helper'

RSpec.describe Api::ItemsController, type: :controller do
  include AuthHelper

  let(:a_user) { FactoryGirl.create(:user) }
  let(:list) { FactoryGirl.create(:list, user_id: a_user.id) }
  let(:item) { FactoryGirl.create(:item, list_id: list.id) }

  let(:json) { JSON.parse(response.body) }

  describe "POST create" do

    before do
      http_login
    end

    it "POST create is successful" do
      post :create, params: {item: {body: "Body description"}, list_id: list.id}
      expect(response).to have_http_status(200)
    end

  end

end
