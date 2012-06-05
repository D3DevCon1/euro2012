class AddResultToFixtures < ActiveRecord::Migration
  def self.up
    add_column :fixtures, :result, :string
  end

  def self.down
    remove_column :fixtures, :result
  end
end
