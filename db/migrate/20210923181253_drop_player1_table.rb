class DropPlayer1Table < ActiveRecord::Migration[6.1]
  def change
    drop_table :player1s
  end
end
