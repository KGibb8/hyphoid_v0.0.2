class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.references :game
      t.string :lat
      t.string :long
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :locations
  end
end
