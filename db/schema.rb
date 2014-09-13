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

ActiveRecord::Schema.define(version: 20140913171658) do

  create_table "all_years", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.decimal  "credits"
    t.decimal  "difficulty"
    t.boolean  "taken"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pairing_id"
  end

  create_table "curriculum_fields", force: true do |t|
    t.decimal  "total_required"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "major_id"
    t.string   "name"
  end

  create_table "majors", force: true do |t|
    t.decimal  "total_required"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "name"
  end

  create_table "pairings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "semester_id"
  end

  create_table "requirements", force: true do |t|
    t.string   "name"
    t.decimal  "credits"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "curriculum_field_id"
    t.integer  "pairing_id"
  end

  create_table "semesters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "all_year_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "pennkey"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
