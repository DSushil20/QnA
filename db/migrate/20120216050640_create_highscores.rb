class CreateHighscores < ActiveRecord::Migration
  def self.up
    create_table :highscores do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :highscores
  end
end
