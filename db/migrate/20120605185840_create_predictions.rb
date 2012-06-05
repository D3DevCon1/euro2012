class CreatePredictions < ActiveRecord::Migration
  def self.up
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :fixture_id
      t.integer :home_prediction
      t.integer :away_prediction

      t.timestamps
    end
  end

  def self.down
    drop_table :predictions
  end
end
