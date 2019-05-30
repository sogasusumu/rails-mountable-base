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

ActiveRecord::Schema.define(version: 2019_05_30_042521) do

  create_table "master_one_lgs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_master_one_lgs_on_name", unique: true
  end

  create_table "master_one_mds", force: :cascade do |t|
    t.integer "master_one_lg_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_one_lg_id", "name"], name: "index_master_one_mds_on_master_one_lg_id_and_name", unique: true
    t.index ["master_one_lg_id"], name: "index_master_one_mds_on_master_one_lg_id"
  end

  create_table "master_one_sms", force: :cascade do |t|
    t.integer "master_one_md_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_one_md_id", "name"], name: "index_master_one_sms_on_master_one_md_id_and_name", unique: true
    t.index ["master_one_md_id"], name: "index_master_one_sms_on_master_one_md_id"
  end

end
