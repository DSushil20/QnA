class RenameNameToName < ActiveRecord::Migration
  def self.up
  	rename_column :users, :Name, :name
  end

  def self.down
  	rename_column :users, :name, :Name
  end
end
