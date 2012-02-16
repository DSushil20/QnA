class RenamePassToPassword < ActiveRecord::Migration
  def self.up
  rename_column :users,:pass,:password
  end

  def self.down
  	rename_column :users,:password,:pass
  end
end
