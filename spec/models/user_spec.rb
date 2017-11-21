require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { is_expected.to have_many(:lists) }

  describe "attributes" do
    it "should have name, email and password attributes" do
      expect(user).to have_attributes(name: user.name, email: user.email, password: user.password)
    end

  end

end
