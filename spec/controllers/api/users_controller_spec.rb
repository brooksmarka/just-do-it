require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do

  let(:new_user_attributes) do
    {
      name: "Michael Jordan",
      email: "mjordan@bloc.io",
      password: "helloworld",

    }
  end

    describe "POST create" do

      it "creates a new user" do
        expect{
          post :create, params: { user: new_user_attributes }
        }.to change(User, :count).by(1)
      end

      it "sets user name properly" do
        post :create, params: { user: new_user_attributes }
        expect(assigns(:user).name).to eq new_user_attributes[:name]
      end

      it "sets user email properly" do
        post :create, params: {user: new_user_attributes }
        expect(assigns(:user).email).to eq new_user_attributes[:email]
      end

      it "sets user password properly" do
       post :create, params: { user: new_user_attributes }
       expect(assigns(:user).password).to eq new_user_attributes[:password]
     end

   end


end
