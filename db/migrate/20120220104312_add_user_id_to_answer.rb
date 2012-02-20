class AddUserIdToAnswer < ActiveRecord::Migration
  def self.up
  	add_column :answers, :user_id
  end

  def self.down
  	remove_column :answers, :user_id
  end
end
