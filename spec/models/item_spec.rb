require 'rails_helper'

 RSpec.describe Item, type: :model do

   let(:item) { Item.create!(body: "New Item Body") }

   describe "attributes" do
     it "has a body attribute" do
       expect(item).to have_attributes(body: "New Item Body")
     end

   end
   
 end
