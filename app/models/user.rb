class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :visitations
  has_many :restrooms, through: :visitations

  has_many :reviews
end
