class DropPlayer2Table < ActiveRecord::Migration[6.1]
  def change
    drop_table :player2s
  end
end
