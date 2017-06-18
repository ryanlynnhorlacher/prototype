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

ActiveRecord::Schema.define(version: 20170609015744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inquiries", force: :cascade do |t|
    t.string   "phone"
    t.string   "email",      null: false
    t.string   "first",      null: false
    t.string   "last",       null: false
    t.text     "message",    null: false
    t.string   "purpose",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_items", force: :cascade do |t|
    t.string   "item",       null: false
    t.integer  "rank"
    t.integer  "section_id"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_list_items_on_list_id", using: :btree
    t.index ["section_id"], name: "index_list_items_on_section_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "list_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_section_mappings", force: :cascade do |t|
    t.integer  "rank"
    t.integer  "page_id"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_page_section_mappings_on_page_id", using: :btree
    t.index ["section_id"], name: "index_page_section_mappings_on_section_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "page_title", null: false
    t.text     "header"
    t.text     "sub_header"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_list_mappings", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_section_list_mappings_on_list_id", using: :btree
    t.index ["section_id"], name: "index_section_list_mappings_on_section_id", using: :btree
  end

  create_table "section_photo_mappings", force: :cascade do |t|
    t.integer  "rank"
    t.integer  "section_id"
    t.integer  "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_section_photo_mappings_on_photo_id", using: :btree
    t.index ["section_id"], name: "index_section_photo_mappings_on_section_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.string   "section_title",  null: false
    t.string   "category",       null: false
    t.text     "paragraph_text"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "service_title", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
