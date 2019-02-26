class AddFalseDefaultToFavorite < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:vistations, :favorite, false )
  end
end
