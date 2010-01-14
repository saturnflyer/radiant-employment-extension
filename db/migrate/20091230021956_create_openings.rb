class CreateOpenings < ActiveRecord::Migration
  def self.up
    create_table :openings do |t|
      t.datetime :starts_at
      t.integer :quantity, :default => 1
      t.integer :position_id

      t.timestamps
    end
  end

  def self.down
    drop_table :openings
  end
end
