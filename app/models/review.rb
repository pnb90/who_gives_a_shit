class Review < ApplicationRecord
  belongs_to :restroom
  belongs_to :user
end
