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

ActiveRecord::Schema.define(version: 2020_03_31_173931) do

  create_table "ads", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "member_interest_ads", force: :cascade do |t|
    t.integer "member_id"
    t.integer "interest_id"
    t.integer "ad_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.string "home_town"
    t.string "gender"
    t.datetime "date_of_birth"
    t.string "race_ethnicity"
    t.string "phone_number"
    t.string "email_address"
  end

  create_table "organization_members", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "member_id"
    t.boolean "is_admin?"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

end
