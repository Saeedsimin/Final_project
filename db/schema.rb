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

ActiveRecord::Schema.define(version: 20150620163009) do

  create_table "doctor_adds", force: :cascade do |t|
    t.datetime "from"
    t.datetime "to"
    t.integer  "total"
    t.integer  "used"
    t.string   "docName"
    t.string   "docFamily"
    t.string   "speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "doctor_id"
  end

  create_table "doctor_user_reserves", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "doctorNum"
    t.string   "address"
    t.string   "speciality"
    t.string   "name"
    t.string   "family"
    t.string   "gender"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_reserves", force: :cascade do |t|
    t.datetime "date"
    t.integer  "doctor_id"
    t.integer  "reserve_id"
    t.integer  "user_id"
    t.integer  "turn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "family"
    t.string   "gender"
    t.string   "phone"
    t.string   "insuranceNumber"
    t.string   "bloodType"
    t.string   "records"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
