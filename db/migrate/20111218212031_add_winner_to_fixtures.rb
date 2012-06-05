class AddWinnerToFixtures < ActiveRecord::Migration
  def self.up
    add_column :fixtures, :winner, :string
  end

  def self.down
    remove_column :fixtures, :winner
  end
end
