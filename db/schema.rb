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

ActiveRecord::Schema.define(version: 2018_05_20_213601) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "contract_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "priority"
    t.date "deadline"
    t.integer "project_phase"
    t.string "title"
    t.text "content"
    t.integer "discipline_id"
    t.integer "requester_id"
    t.integer "requested_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discipline_id"], name: "index_requests_on_discipline_id"
    t.index ["requested_id"], name: "index_requests_on_requested_id"
    t.index ["requester_id"], name: "index_requests_on_requester_id"
  end

  create_table "responses", force: :cascade do |t|
    t.text "content"
    t.integer "request_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_responses_on_company_id"
    t.index ["request_id"], name: "index_responses_on_request_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.integer "kind"
    t.integer "status"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
  end

end
