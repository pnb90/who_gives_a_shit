class Review < ApplicationRecord
  belongs_to :restroom
  belongs_to :user

  def calculate_over_all
    combined_rating = (self.cleanliness + self.uniqueness + self.upkeep + self.toilet_paper_quality + self.amenities + self.accessibility + self.number_of_stalls + self.size + self.privacy)
    sum = combined_rating / 9
    self.overall_rating = sum
  end
end
