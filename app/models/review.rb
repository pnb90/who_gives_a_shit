class Review < ApplicationRecord
  belongs_to :restroom
  belongs_to :user

  def overall
    (cleanliness + uniqueness + upkeep + toilet_paper_quality + amenities + accessibility + number_of_stalls + size + privacy) / 9
  end
end
