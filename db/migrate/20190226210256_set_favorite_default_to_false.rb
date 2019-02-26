class SetFavoriteDefaultToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:visitations, :favorite, false)
  end
end
