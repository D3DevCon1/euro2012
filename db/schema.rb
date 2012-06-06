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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120606213444) do

  create_table "fixtures", :force => true do |t|
    t.datetime "date"
    t.string   "home_team"
    t.string   "away_team"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weekno"
    t.integer  "home_goals"
    t.integer  "away_goals"
    t.string   "winner"
    t.string   "result"
  end

  create_table "gameweeks", :force => true do |t|
    t.integer  "number"
    t.integer  "matches"
    t.datetime "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "picks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game1"
    t.integer  "game2"
    t.integer  "game3"
    t.integer  "game4"
    t.integer  "game5"
    t.integer  "game6"
    t.integer  "game7"
    t.integer  "game8"
    t.integer  "game9"
    t.integer  "game10"
    t.integer  "game11"
    t.integer  "game12"
    t.integer  "game13"
    t.integer  "game14"
    t.integer  "game15"
    t.integer  "game16"
    t.integer  "game17"
    t.integer  "game18"
    t.integer  "game19"
    t.integer  "game20"
    t.integer  "game21"
    t.integer  "game22"
    t.integer  "game23"
    t.integer  "game24"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", :force => true do |t|
    t.string   "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "selections", :force => true do |t|
    t.integer  "userid"
    t.integer  "gameweek"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
