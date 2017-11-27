require 'rails_helper'

RSpec.describe Api::ListsController, type: :controller do
  include AuthHelper

  let(:a_user) { FactoryGirl.create(:user) }
  let(:list) { FactoryGirl.create(:list, user_id: a_user.id) }

  let(:json) { JSON.parse(response.body) }

  describe "POST create" do
    before do
      http_login
    end

    it "POST create is successful" do
      post :create, params: {list: {title: "List title"}, user_id: a_user.id}
      expect(response).to have_http_status(200)
    end

  end

end
