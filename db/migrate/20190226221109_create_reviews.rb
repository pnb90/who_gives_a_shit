class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
        t.integer :cleanliness
        t.integer :uniqueness
        t.integer :upkeep
        t.integer :toilet_paper_quality
        t.integer :amenities
        t.integer :accessibility
        t.integer :number_of_stalls
        t.integer :size
        t.integer :privacy
        t.integer :overall_rating
        t.text :summary

      t.timestamps
    end
  end
end
