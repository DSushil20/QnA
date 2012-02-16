class RemoveColumn < ActiveRecord::Migration
  def self.up
  	remove_column :answers, :t_stamp
  end

  def self.down
  	add_column :answers, :t_stamp
  end
end
