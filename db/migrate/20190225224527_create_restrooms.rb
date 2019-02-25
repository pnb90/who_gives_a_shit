class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.integer :cleanliness
      t.integer :uniqueness
      t.integer :upkeep
      t.integer :toilet_paper_quality
      t.integer :amenities
      t.integer :accessibility
      t.integer :number_of_stalls
      t.integer :size
      t.integer :privacy
      t.string :location
      t.text :summary
      t.integer :overall_rating

      t.timestamps
    end
  end
end
