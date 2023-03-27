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

ActiveRecord::Schema[7.0].define(version: 2023_03_26_012322) do
  create_table "action_items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "phase_id", null: false
    t.integer "user_id", null: false
    t.string "category"
    t.date "start_date"
    t.date "due_date"
    t.date "completed_date"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_action_items_on_phase_id"
    t.index ["user_id"], name: "index_action_items_on_user_id"
  end

  create_table "phases", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "project_id", null: false
    t.string "start_date"
    t.string "date"
    t.date "due_date"
    t.date "completed_date"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_phases_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "completed"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description", limit: 200
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "action_items", "phases"
  add_foreign_key "action_items", "users"
  add_foreign_key "phases", "projects"
end
