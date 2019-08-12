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

ActiveRecord::Schema.define(version: 2019_08_12_014530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book", force: :cascade do |t|
    t.string "title", limit: 132, null: false
    t.string "author", limit: 132, null: false
    t.integer "year"
    t.index ["title"], name: "index_book_on_title", unique: true
  end

  create_table "book_store", id: false, force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "book_id", null: false
    t.integer "book_count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_store_on_book_id"
    t.index ["store_id"], name: "index_book_store_on_store_id"
  end

  create_table "role", force: :cascade do |t|
    t.string "code", limit: 32, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_role_on_code", unique: true
  end

  create_table "role_user", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.index ["role_id", "user_id"], name: "index_role_user_on_role_id_and_user_id"
    t.index ["user_id", "role_id"], name: "index_role_user_on_user_id_and_role_id"
  end

  create_table "store", force: :cascade do |t|
    t.string "codename", limit: 32, null: false
    t.string "address", limit: 132, null: false
    t.string "phone", limit: 64
    t.index ["codename"], name: "index_store_on_codename", unique: true
  end

  create_table "user", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_user_on_username", unique: true
  end

end
