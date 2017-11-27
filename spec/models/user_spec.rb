require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(name: "Michael Jordan", email: "mjordan@bloc.io", password: "helloworld") }


  it { is_expected.to have_many(:lists) }

  describe "attributes" do

     it "should respond to name" do
       expect(user).to respond_to(:name)
     end

     it "should respond to email" do
       expect(user).to respond_to(:email)
     end

  end

end
