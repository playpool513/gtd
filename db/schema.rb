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

ActiveRecord::Schema.define(version: 20170709101403) do

  create_table "project_tags", force: :cascade do |t|
    t.integer  "project_id", limit: 4
    t.integer  "tag_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "project_tags", ["project_id"], name: "index_project_tags_on_project_id", using: :btree
  add_index "project_tags", ["tag_id"], name: "index_project_tags_on_tag_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "notes",      limit: 65535
    t.integer  "state",      limit: 4
    t.boolean  "focus"
    t.date     "due"
    t.integer  "process",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "type",       limit: 255
    t.integer  "color",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "todo_tags", force: :cascade do |t|
    t.integer  "todo_id",    limit: 4
    t.integer  "tag_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "todo_tags", ["tag_id"], name: "index_todo_tags_on_tag_id", using: :btree
  add_index "todo_tags", ["todo_id"], name: "index_todo_tags_on_todo_id", using: :btree

  create_table "todos", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "notes",      limit: 65535
    t.integer  "state",      limit: 4
    t.boolean  "focus"
    t.integer  "time",       limit: 4
    t.integer  "energy",     limit: 4
    t.date     "due"
    t.integer  "project_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
