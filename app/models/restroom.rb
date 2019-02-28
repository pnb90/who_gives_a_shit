class Restroom < ApplicationRecord
  has_many :visitations
  has_many :users, through: :visitations
  
  has_many :reviews
  def count_reviews
    self.reviews.count
  end
end
