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

ActiveRecord::Schema.define(version: 20180312042215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

# Could not dump table "accounts" because of following StandardError
#   Unknown type 'gender' for column 'gender'

  create_table "accounts_roles", primary_key: ["account", "role"], force: :cascade do |t|
    t.integer "account", null: false
    t.string "role", limit: 25, null: false
  end

  create_table "languages", primary_key: "code", id: :string, limit: 2, force: :cascade do |t|
    t.string "name", limit: 30
  end

  create_table "listings", id: :serial, force: :cascade do |t|
    t.integer "account_id", null: false
    t.datetime "created_on", default: -> { "now()" }, null: false
    t.integer "views", default: 0, null: false
    t.index ["id", "account_id"], name: "listings_id_account_id_key", unique: true
  end

  create_table "listings_i18n", primary_key: ["listing_id", "language"], force: :cascade do |t|
    t.integer "listing_id", null: false
    t.string "language", limit: 2, null: false
    t.string "title", limit: 100, null: false
    t.text "description", null: false
  end

  create_table "migrations", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.datetime "run_on", null: false
  end

  create_table "roles", primary_key: "name", id: :string, limit: 25, force: :cascade do |t|
    t.string "description", limit: 255
  end

end
