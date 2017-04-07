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

ActiveRecord::Schema.define(version: 20170406045414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "glossaries", force: :cascade do |t|
    t.string   "name"
    t.boolean  "external_use"
    t.string   "english_name"
    t.text     "description"
    t.string   "development_name"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "glossary_labels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "glossary_requests", force: :cascade do |t|
    t.integer  "glossary_id"
    t.text     "request_reason"
    t.string   "requester"
    t.text     "decision_reason"
    t.string   "name"
    t.boolean  "external_use"
    t.string   "english_name"
    t.text     "description"
    t.string   "development_name"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["glossary_id"], name: "index_glossary_requests_on_glossary_id", using: :btree
  end

  create_table "label_requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string   "label_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
