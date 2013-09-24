# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130924213127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genre_descriptions", force: true do |t|
    t.integer  "genre_id"
    t.integer  "description_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genre_descriptions", ["description_id"], name: "index_genre_descriptions_on_description_id", using: :btree
  add_index "genre_descriptions", ["genre_id"], name: "index_genre_descriptions_on_genre_id", using: :btree

  create_table "genrelizations", force: true do |t|
    t.integer  "song_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_genres", force: true do |t|
    t.integer  "parent_genre_id"
    t.integer  "child_genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_genres", ["child_genre_id"], name: "index_sub_genres_on_child_genre_id", using: :btree
  add_index "sub_genres", ["parent_genre_id"], name: "index_sub_genres_on_parent_genre_id", using: :btree

end
