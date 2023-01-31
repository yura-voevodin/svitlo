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
  create_table "days", force: :cascade do |t|
    t.date "date"
    t.integer "line_id", null: false
    t.boolean "time1", default: false
    t.boolean "time2", default: false
    t.boolean "time3", default: false
    t.boolean "time4", default: false
    t.boolean "time5", default: false
    t.boolean "time6", default: false
    t.boolean "time7", default: false
    t.boolean "time8", default: false
    t.boolean "time9", default: false
    t.boolean "time10", default: false
    t.boolean "time11", default: false
    t.boolean "time12", default: false
    t.boolean "time13", default: false
    t.boolean "time14", default: false
    t.boolean "time15", default: false
    t.boolean "time16", default: false
    t.boolean "time17", default: false
    t.boolean "time18", default: false
    t.boolean "time19", default: false
    t.boolean "time20", default: false
    t.boolean "time21", default: false
    t.boolean "time22", default: false
    t.boolean "time23", default: false
    t.boolean "time24", default: false
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
