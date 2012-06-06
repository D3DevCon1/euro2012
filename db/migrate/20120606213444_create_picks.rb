class CreatePicks < ActiveRecord::Migration
  def self.up
    create_table :picks do |t|
      t.integer :user_id
      t.integer :game1
      t.integer :game2
      t.integer :game3
      t.integer :game4
      t.integer :game5
      t.integer :game6
      t.integer :game7
      t.integer :game8
      t.integer :game9
      t.integer :game10
      t.integer :game11
      t.integer :game12
      t.integer :game13
      t.integer :game14
      t.integer :game15
      t.integer :game16
      t.integer :game17
      t.integer :game18
      t.integer :game19
      t.integer :game20
      t.integer :game21
      t.integer :game22
      t.integer :game23
      t.integer :game24

      t.timestamps
    end
  end

  def self.down
    drop_table :picks
  end
end
