class AddKarmaToUser < ActiveRecord::Migration
  def self.up
  	add_column :users, :karma, :string
  end

  def self.down
  	remove_column :users, :karma
  end
end
