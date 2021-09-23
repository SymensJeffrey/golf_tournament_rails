class DropPlayer3Table < ActiveRecord::Migration[6.1]
  def change
    drop_table :player3s
  end
end
