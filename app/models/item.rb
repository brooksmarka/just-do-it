class Item < ApplicationRecord
  belongs_to :list

  validates :body, length: {minimum: 1, maximum: 100 }, presence: true
end
