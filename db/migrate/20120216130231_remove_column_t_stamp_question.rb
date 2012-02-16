class RemoveColumnTStampQuestion < ActiveRecord::Migration
  def self.up
 	remove_column :questions, :t_stamp
  end

  def self.down
	add_column :questions, :t_stamp
  end
end
