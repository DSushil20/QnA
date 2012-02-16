class RenameAnswerToDescription < ActiveRecord::Migration
  def self.up
  	rename_column :answers, :answer, :description
  end

  def self.down
  	rename_column :answers, :description, :answer
  end
end
