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

ActiveRecord::Schema.define(version: 20160910104604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "csgo_guides", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csgo_highlights", force: :cascade do |t|
    t.string   "url"
    t.string   "img"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csgo_news", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csgo_reddits", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.integer  "upvotes"
    t.integer  "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csgo_streamers", force: :cascade do |t|
    t.string   "url"
    t.string   "logo_src"
    t.string   "name"
    t.string   "description"
    t.integer  "viewers"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "csgo_youtubes", force: :cascade do |t|
    t.string   "embed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_guides", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_highlights", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_matches", force: :cascade do |t|
    t.string   "team_1"
    t.string   "team_2"
    t.integer  "score_1"
    t.integer  "score_2"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tournament"
  end

  create_table "dota_news", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_reddits", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.integer  "upvotes"
    t.integer  "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_streamers", force: :cascade do |t|
    t.string   "url"
    t.string   "logo_src"
    t.string   "name"
    t.string   "description"
    t.integer  "viewers"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dota_youtubes", force: :cascade do |t|
    t.string   "embed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "username"
    t.string   "role",                   default: "Member"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
