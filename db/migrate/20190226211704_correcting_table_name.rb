class CorrectingTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table('vistations', 'visitations')
  end
end
