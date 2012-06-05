class AddGamewwekToFixtures < ActiveRecord::Migration
  def self.up
    add_column :fixtures, :weekno, :integer
  end

  def self.down
    remove_column :fixtures, :weekno
  end
end
