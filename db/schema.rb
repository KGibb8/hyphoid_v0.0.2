# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 5) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "map_size",   default: 1
    t.boolean  "in_session"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "mycorrhiza_id"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mycorrhizas", force: :cascade do |t|
    t.integer  "player_session_id"
    t.integer  "proteins",          default: 100
    t.integer  "sugars",            default: 50
    t.integer  "nitrates",          default: 100
    t.integer  "carbon",            default: 100
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "player_sessions", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "player_sessions", "games"
  add_foreign_key "player_sessions", "players"
end
