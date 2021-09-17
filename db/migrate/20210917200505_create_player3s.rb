class CreatePlayer3s < ActiveRecord::Migration[6.1]
  def change
    create_table :player3s do |t|
      t.string :name
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3
      t.integer :hole4
      t.integer :hole5
      t.integer :hole6
      t.integer :hole7
      t.integer :hole8
      t.integer :hole9
      t.integer :hole10
      t.integer :hole11
      t.integer :hole12
      t.integer :hole13
      t.integer :hole14
      t.integer :hole15
      t.integer :hole16
      t.integer :hole17
      t.integer :hole18

      t.timestamps
    end
  end
end
