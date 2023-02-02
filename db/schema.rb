# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_30_071848) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.date "date"
    t.integer "line_id", null: false
    t.string "time1"
    t.string "time2"
    t.string "time3"
    t.string "time4"
    t.string "time5"
    t.string "time6"
    t.string "time7"
    t.string "time8"
    t.string "time9"
    t.string "time10"
    t.string "time11"
    t.string "time12"
    t.string "time13"
    t.string "time14"
    t.string "time15"
    t.string "time16"
    t.string "time17"
    t.string "time18"
    t.string "time19"
    t.string "time20"
    t.string "time21"
    t.string "time22"
    t.string "time23"
    t.string "time24"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_days_on_line_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "days", "lines"
end
