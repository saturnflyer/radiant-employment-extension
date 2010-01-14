class CreateInterviews < ActiveRecord::Migration
  def self.up
    create_table :interviews do |t|
      t.string :interviewer
      t.datetime :starts_at
      t.integer :duration_minutes
      t.integer :opening_id

      t.timestamps
    end
  end

  def self.down
    drop_table :interviews
  end
end
