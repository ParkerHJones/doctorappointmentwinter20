# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_26_164807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appts", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctor_id", null: false
    t.bigint "user_id", null: false
    t.index ["doctor_id"], name: "index_appts_on_doctor_id"
    t.index ["user_id"], name: "index_appts_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "profession"
    t.boolean "md"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.integer "weight"
    t.string "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appts", "doctors"
  add_foreign_key "appts", "users"
end
