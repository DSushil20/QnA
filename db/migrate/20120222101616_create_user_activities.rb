class CreateUserActivities < ActiveRecord::Migration
  def self.up
    create_table :user_activities do |t|
      t.integer :user_id
      t.integer :answer_id
      t.integer :vote

      t.timestamps
    end
  end

  def self.down
    drop_table :user_activities
  end
end
