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

ActiveRecord::Schema.define(version: 20131027111706) do

  create_table "courses", force: true do |t|
    t.string   "title",                      null: false
    t.string   "description",                null: false
    t.float    "cost",        default: 10.0
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id", using: :btree

  create_table "lessons", force: true do |t|
    t.string   "title",       null: false
    t.string   "description"
    t.text     "body",        null: false
    t.integer  "number"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["course_id"], name: "index_lessons_on_course_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title",                      null: false
    t.text     "body",                       null: false
    t.boolean  "published",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "text",       null: false
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["course_id"], name: "index_reviews_on_course_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "tasks", force: true do |t|
    t.string  "title",     null: false
    t.text    "body",      null: false
    t.integer "number",    null: false
    t.integer "lesson_id"
  end

  add_index "tasks", ["lesson_id"], name: "index_tasks_on_lesson_id", using: :btree

end
