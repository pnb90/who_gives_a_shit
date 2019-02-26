class DropVisitations < ActiveRecord::Migration[5.2]
  def change
    drop_table :visitations
  end
end
