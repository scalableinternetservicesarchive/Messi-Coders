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

ActiveRecord::Schema.define(version: 20161129095653) do

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "subtext"
    t.text     "imglink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "newslink"
  end

  create_table "players", force: :cascade do |t|
    t.string   "pid"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "clubname"
    t.string   "number"
    t.string   "dob"
    t.string   "position"
    t.string   "hometown"
    t.string   "homestate"
    t.string   "height"
    t.string   "school"
    t.string   "twitter"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_players_on_club_id"
  end

end
