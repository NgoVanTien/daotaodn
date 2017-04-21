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

ActiveRecord::Schema.define(version: 20170421014957) do

  create_table "bac_dao_tao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "kyhieu"
    t.string   "tenbacdaotao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "chi_tiet_dao_tao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "kyhoc"
    t.integer  "mon_hoc_id"
    t.integer  "chuong_trinh_dao_tao_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["chuong_trinh_dao_tao_id"], name: "fk_rails_e6e4df5a66", using: :btree
    t.index ["mon_hoc_id"], name: "fk_rails_28b22654cf", using: :btree
  end

  create_table "chuong_trinh_dao_tao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "mactdt"
    t.string   "tenctdt"
    t.integer  "sotinchi"
    t.integer  "bac_dao_tao_id"
    t.integer  "khoa_hoc_id"
    t.integer  "khoa_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["bac_dao_tao_id"], name: "fk_rails_c26e066803", using: :btree
    t.index ["khoa_hoc_id"], name: "fk_rails_be0ce7369b", using: :btree
    t.index ["khoa_id"], name: "fk_rails_284331f29e", using: :btree
  end

  create_table "khoa", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tenkhoa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "khoa_hoc", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tenkhoahoc"
    t.date     "nambatdau"
    t.date     "namketthuc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loai_mon_hoc", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ten"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mon_hoc", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "mamonhoc"
    t.string   "tenmonhoc"
    t.string   "cachviettat"
    t.float    "hesotinchi",      limit: 24
    t.integer  "loai_mon_hoc_id"
    t.integer  "khoa_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["khoa_id"], name: "fk_rails_593db008d1", using: :btree
    t.index ["loai_mon_hoc_id"], name: "fk_rails_440310e35f", using: :btree
  end

  create_table "tai_khoan", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "name",                   default: "", null: false
    t.integer  "role",                   default: 0,  null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_tai_khoan_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_tai_khoan_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "chi_tiet_dao_tao", "chuong_trinh_dao_tao"
  add_foreign_key "chi_tiet_dao_tao", "mon_hoc"
  add_foreign_key "chuong_trinh_dao_tao", "bac_dao_tao"
  add_foreign_key "chuong_trinh_dao_tao", "khoa"
  add_foreign_key "chuong_trinh_dao_tao", "khoa_hoc"
  add_foreign_key "mon_hoc", "khoa"
  add_foreign_key "mon_hoc", "loai_mon_hoc"
end
