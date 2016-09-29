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

ActiveRecord::Schema.define(version: 20160712031006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "musical_pieces", force: :cascade do |t|
    t.string   "title"
    t.string   "composer"
    t.integer  "grade"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "category",   default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["student_id"], name: "index_registrations_on_student_id", using: :btree
    t.index ["teacher_id"], name: "index_registrations_on_teacher_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role",            default: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
