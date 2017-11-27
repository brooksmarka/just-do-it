FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password 'password'
    sequence :name do |n|
      "Guy#{n}"
    end
  end
end
