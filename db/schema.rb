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

ActiveRecord::Schema.define(version: 20171122040052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "claims", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company"
    t.string "typep"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.integer "notice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "state"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "sector"
    t.string "description"
    t.integer "user_id"
    t.string "logo"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experience_images", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "user_id"
    t.integer "order"
    t.integer "experience_id"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.date "end_date"
    t.integer "customer_id"
    t.integer "user_id"
    t.string "place"
    t.integer "service_id"
    t.text "description"
    t.string "name"
    t.integer "value"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "level"
    t.string "file"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "image"
    t.string "state"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "new_category_id"
    t.boolean "state_notice"
  end

  create_table "service_images", force: :cascade do |t|
    t.string "name"
    t.string "imagen"
    t.string "user_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "first"
    t.integer "order"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "sub_services"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "experience"
    t.string "image"
    t.integer "user_id"
    t.string "linkedin"
    t.string "twitter"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "names"
    t.string "last_names"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
