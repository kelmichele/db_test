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

ActiveRecord::Schema.define(version: 20161214161712) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.string   "hashed_password", limit: 40
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["username"], name: "index_admin_users_on_username", using: :btree
  end

  create_table "admin_users_lawyers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admin_user_id"
    t.integer "lawyer_id"
    t.index ["admin_user_id", "lawyer_id"], name: "index_admin_users_lawyers_on_admin_user_id_and_lawyer_id", using: :btree
  end

  create_table "directories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       limit: 25
    t.integer  "position"
    t.boolean  "visible",               default: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "info_edits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "admin_user_id"
    t.integer  "info_id"
    t.string   "summary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id", "info_id"], name: "index_info_edits_on_admin_user_id_and_info_id", using: :btree
  end

  create_table "infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "lawyer_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",                    default: false
    t.string   "content_type"
    t.text     "content",      limit: 65535
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["lawyer_id"], name: "index_infos_on_lawyer_id", using: :btree
  end

  create_table "lawyers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "directory_id"
    t.string   "name"
    t.integer  "permalink"
    t.integer  "position"
    t.boolean  "visible",      default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["directory_id"], name: "index_lawyers_on_directory_id", using: :btree
    t.index ["permalink"], name: "index_lawyers_on_permalink", using: :btree
  end

end
