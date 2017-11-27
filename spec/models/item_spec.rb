require 'rails_helper'

 RSpec.describe Item, type: :model do

   let(:user) { User.create!(name: "Michael Jordan", email: "mjordan@bloc.io", password: "helloworld") }
   let(:list) { List.create!(title: "List title", user_id: user.id) }
   let(:item) { Item.create!(body: "New Item Body", list_id: list.id) }

   describe "attributes" do
     it "has a body attribute" do
       expect(item).to have_attributes(body: "New Item Body")
     end

   end

 end
