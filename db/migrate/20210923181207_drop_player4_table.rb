class DropPlayer4Table < ActiveRecord::Migration[6.1]
  def change
    drop_table :player4s
  end
end
