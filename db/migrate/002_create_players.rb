class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :players
  end
end
