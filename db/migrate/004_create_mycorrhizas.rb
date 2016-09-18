class CreateMycorrhizas < ActiveRecord::Migration
  def self.up
    create_table :mycorrhizas do |t|
      t.references :player_session
      t.integer :proteins, default: 100
      t.integer :sugars, default: 50
      t.integer :nitrates, default: 100
      t.integer :carbon, default: 100
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :mycorrhizas
  end
end
