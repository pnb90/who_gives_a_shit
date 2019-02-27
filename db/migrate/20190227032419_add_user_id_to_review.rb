class AddUserIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :user_id, :integer
    add_column :users, :username, :string
  end
end
