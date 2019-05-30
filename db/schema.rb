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

ActiveRecord::Schema.define(version: 2019_05_30_071516) do

  create_table "master_one_lgs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_master_one_lgs_on_name", unique: true
  end

  create_table "master_one_mds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "master_one_lg_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_one_lg_id", "name"], name: "index_master_one_mds_on_master_one_lg_id_and_name", unique: true
    t.index ["master_one_lg_id"], name: "index_master_one_mds_on_master_one_lg_id"
  end

  create_table "master_one_sms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "master_one_md_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_one_md_id", "name"], name: "index_master_one_sms_on_master_one_md_id_and_name", unique: true
    t.index ["master_one_md_id"], name: "index_master_one_sms_on_master_one_md_id"
  end

  create_table "mount_one_accounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "master_one_sm_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_one_sm_id", "name"], name: "index_mount_one_accounts_on_master_one_sm_id_and_name", unique: true
    t.index ["master_one_sm_id"], name: "index_mount_one_accounts_on_master_one_sm_id"
  end

  create_table "mount_one_emails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "mount_one_account_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mount_one_account_id", "name"], name: "index_mount_one_emails_on_mount_one_account_id_and_name", unique: true
    t.index ["mount_one_account_id"], name: "index_mount_one_emails_on_mount_one_account_id"
  end

  add_foreign_key "master_one_mds", "master_one_lgs"
  add_foreign_key "master_one_sms", "master_one_mds"
  add_foreign_key "mount_one_accounts", "master_one_sms"
  add_foreign_key "mount_one_emails", "mount_one_accounts"
end
