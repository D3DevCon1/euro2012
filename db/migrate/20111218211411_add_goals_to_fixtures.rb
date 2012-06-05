class AddGoalsToFixtures < ActiveRecord::Migration
  def self.up
    add_column :fixtures, :home_goals, :integer
    add_column :fixtures, :away_goals, :integer
  end

  def self.down
    remove_column :fixtures, :away_goals
    remove_column :fixtures, :home_goals
  end
end
