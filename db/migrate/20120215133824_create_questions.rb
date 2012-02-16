class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :q_str
      t.time :t_stamp

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
