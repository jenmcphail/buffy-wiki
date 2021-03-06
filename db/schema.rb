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

ActiveRecord::Schema.define(version: 20160608184851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "description"
    t.string   "character_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "season1",        default: false
    t.boolean  "season2",        default: false
    t.boolean  "season3",        default: false
    t.boolean  "season4",        default: false
    t.boolean  "season5",        default: false
    t.boolean  "season6",        default: false
    t.boolean  "season7",        default: false
    t.integer  "votes",          default: 0
  end

end
