class AddRestroomIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :restroom_id, :integer
  end
end
