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

ActiveRecord::Schema.define(version: 20160729050532) do

  create_table "employees", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.integer  "emp_no",     limit: 4
    t.string   "gender",     limit: 255
    t.string   "contact_no", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "meeting_rooms", force: :cascade do |t|
    t.string   "room",       limit: 255
    t.string   "area",       limit: 255
    t.string   "equipment",  limit: 255
    t.integer  "capacity",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "floor",      limit: 4
    t.integer  "status",     limit: 4
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "reservation_date"
    t.time     "time_start"
    t.time     "time_end"
    t.string   "purpose",            limit: 255
    t.integer  "no_of_participants", limit: 4
    t.integer  "employee_id",        limit: 4
    t.integer  "meeting_room_id",    limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "reservations", ["employee_id"], name: "index_reservations_on_employee_id", using: :btree
  add_index "reservations", ["meeting_room_id"], name: "index_reservations_on_meeting_room_id", using: :btree

  add_foreign_key "reservations", "employees"
  add_foreign_key "reservations", "meeting_rooms"
end
