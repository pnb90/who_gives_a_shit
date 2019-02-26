class CreateVistations < ActiveRecord::Migration[5.2]
  def change
    create_table :vistations do |t|
      t.integer :user_id
      t.integer :restroom_id
      t.boolean :favorite

      t.timestamps
    end
  end
end
