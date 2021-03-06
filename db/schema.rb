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

ActiveRecord::Schema.define(version: 20180825005731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_foundations", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "points"
    t.datetime "initialDate"
    t.datetime "finalDate"
    t.integer "active"
    t.bigint "foundation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foundation_id"], name: "index_event_foundations_on_foundation_id"
  end

  create_table "event_users", force: :cascade do |t|
    t.bigint "event_foundation_id"
    t.bigint "user_id"
    t.integer "points"
    t.datetime "dateEvent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_foundation_id"], name: "index_event_users_on_event_foundation_id"
    t.index ["user_id"], name: "index_event_users_on_user_id"
  end

  create_table "events_users", force: :cascade do |t|
    t.bigint "event_foundation_id"
    t.bigint "user_id"
    t.integer "points"
    t.datetime "dateEvent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_foundation_id"], name: "index_events_users_on_event_foundation_id"
    t.index ["user_id"], name: "index_events_users_on_user_id"
  end

  create_table "foundation_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foundations", force: :cascade do |t|
    t.string "name"
    t.string "nit"
    t.integer "active"
    t.bigint "foundation_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["foundation_type_id"], name: "index_foundations_on_foundation_type_id"
  end

  create_table "profile_roles", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "profile_id"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_profile_roles_on_profile_id"
    t.index ["role_id"], name: "index_profile_roles_on_role_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "first_name"
    t.string "last_name"
    t.string "identification"
    t.integer "points"
    t.integer "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.bigint "foundation_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["foundation_id"], name: "index_users_on_foundation_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "event_foundations", "foundations"
  add_foreign_key "event_users", "event_foundations"
  add_foreign_key "event_users", "users"
  add_foreign_key "events_users", "event_foundations"
  add_foreign_key "events_users", "users"
  add_foreign_key "foundations", "foundation_types"
  add_foreign_key "profile_roles", "profiles"
  add_foreign_key "profile_roles", "roles"
  add_foreign_key "users", "foundations"
  add_foreign_key "users", "roles"
end
