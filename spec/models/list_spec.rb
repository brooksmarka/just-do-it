require 'rails_helper'

 RSpec.describe List, type: :model do

   let(:list) { List.create!(title: "New List Title") }

   it { is_expected.to have_many(:items) }

   describe "attributes" do
     it "has a title attribute" do
       expect(list).to have_attributes(title: "New List Title")
     end
   end
 end
