require 'rails_helper'

RSpec.describe Api::ListsController, type: :controller do
  include AuthHelper

  let(:a_user) { FactoryGirl.create(:user) }
  let(:list) { FactoryGirl.create(:list, user_id: a_user.id) }
  let(:list_to_delete) { FactoryGirl.create(:list, user_id: a_user.id)}

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

  describe "DELETE destroy" do
    before do
      http_login
    end

    it "deletes the list" do
      delete :destroy, params: {id: list_to_delete.id, user_id: a_user.id}
      expect(response).to have_http_status(204)
    end

  end

  describe "PUT update" do
    before do
      http_login
    end

    it "updates the list" do
      put :update, params: {list: {permission: true }, user_id: a_user.id, id: list.id}
      expect(response).to have_http_status(200)
    end
  end

end
