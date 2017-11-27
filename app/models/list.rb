class List < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :title, length: {minimum: 1, maximum: 100 }, presence: true

end
