class CreateGameweeks < ActiveRecord::Migration
  def self.up
    create_table :gameweeks do |t|
      t.integer :number
      t.integer :matches
      t.datetime :deadline

      t.timestamps
    end
  end

  def self.down
    drop_table :gameweeks
  end
end
