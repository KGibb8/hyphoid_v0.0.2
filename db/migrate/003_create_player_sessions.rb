class CreatePlayerSessions < ActiveRecord::Migration
  def self.up
    create_table :player_sessions do |t|
      t.references :player, foreign_key: true
      t.references :game, foreign_key: true
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :player_sessions
  end
end
