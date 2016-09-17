class CreateMycorrhizas < ActiveRecord::Migration
  def self.up
    create_table :mycorrhizas do |t|
      t.references :player_session
      t.integer :proteins
      t.integer :sugars
      t.integer :nitrates
      t.integer :carbon
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :mycorrhizas
  end
end
