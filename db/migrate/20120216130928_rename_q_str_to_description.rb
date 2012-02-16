class RenameQStrToDescription < ActiveRecord::Migration
  def self.up
  	rename_column :questions, :q_str, :description
  end

  def self.down
		rename_column :questions, :description, :q_str
  end
end
