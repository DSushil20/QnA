class AddUserIdToQuestion < ActiveRecord::Migration
  def self.up
  	add_column :questions, :user_id
  end

  def self.down
  	remove_column :questions, :user_id
  end
end
