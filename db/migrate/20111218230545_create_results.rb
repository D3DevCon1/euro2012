class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :score

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
