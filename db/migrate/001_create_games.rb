class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :map_size, default: 1
      t.boolean :in_session
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :games
  end
end
