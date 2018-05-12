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

ActiveRecord::Schema.define(version: 2018_05_11_210325) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interview_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.string "observation"
    t.integer "interview_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interview_types_id"], name: "index_interviews_on_interview_types_id"
  end

  create_table "postulant_processes", force: :cascade do |t|
    t.string "name"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_postulant_processes_on_area_id"
  end

  create_table "responsables", force: :cascade do |t|
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sequences", force: :cascade do |t|
    t.integer "order"
    t.integer "stages_id"
    t.integer "postulant_processes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["postulant_processes_id"], name: "index_sequences_on_postulant_processes_id"
    t.index ["stages_id"], name: "index_sequences_on_stages_id"
  end

  create_table "stage_applicants", force: :cascade do |t|
    t.integer "stages_id"
    t.integer "applicants_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicants_id"], name: "index_stage_applicants_on_applicants_id"
    t.index ["stages_id"], name: "index_stage_applicants_on_stages_id"
  end

  create_table "stage_labors", force: :cascade do |t|
    t.integer "stages_id"
    t.integer "laborable_id"
    t.string "laborable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laborable_type", "laborable_id"], name: "index_stage_labors_on_laborable_type_and_laborable_id"
    t.index ["stages_id"], name: "index_stage_labors_on_stages_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "name"
    t.integer "responsables_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["responsables_id"], name: "index_stages_on_responsables_id"
  end

end
