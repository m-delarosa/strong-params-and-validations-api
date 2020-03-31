class User < ApplicationRecord
  validates :name, :username, :email, presence: true
  validates :username, length: { minimum: 6, maximum: 12 }
end
