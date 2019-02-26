class RemoveReviewInformationFromRestrooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :restrooms, :cleanliness, :integer
    remove_column :restrooms, :uniqueness, :integer
    remove_column :restrooms, :upkeep, :integer
    remove_column :restrooms, :toilet_paper_quality, :integer
    remove_column :restrooms, :amenities, :integer
    remove_column :restrooms, :accessibility, :integer
    remove_column :restrooms, :number_of_stalls, :integer
    remove_column :restrooms, :size, :integer
    remove_column :restrooms, :privacy, :integer
    remove_column :restrooms, :summary, :text
    remove_column :restrooms, :overall_rating, :integer
  end
end
