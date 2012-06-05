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

ActiveRecord::Schema.define(:version => 20120605185840) do

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

  create_table "predictions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "fixture_id"
    t.integer  "home_prediction"
    t.integer  "away_prediction"
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
