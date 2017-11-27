class User < ApplicationRecord
  has_many :lists

  validates :name, length: {minimum: 1, maximum: 100}, presence: true
  validates :password, length: {minimum: 6 }, allow_blank: false
end
