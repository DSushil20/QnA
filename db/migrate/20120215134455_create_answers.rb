class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :answer
      t.float :rating
      t.time :t_stamp

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
