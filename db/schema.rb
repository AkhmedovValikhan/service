# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150331121749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.string   "vk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_cats", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", force: :cascade do |t|
    t.string   "title"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.string   "vk"
    t.datetime "hire_date"
    t.datetime "birth_date"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_tasks", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "master_id"
    t.integer  "dispatcher_id"
    t.integer  "device_id"
    t.string   "serail"
    t.integer  "imei"
    t.string   "bug"
    t.integer  "status_id"
    t.string   "dispatchers_note"
    t.string   "masters_note"
    t.datetime "reception_date"
    t.datetime "issue_date"
    t.datetime "approx_date"
    t.decimal  "prepayment",       precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spare_prices", force: :cascade do |t|
    t.integer  "spare_id"
    t.datetime "date"
    t.decimal  "price",      precision: 12, scale: 2
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spares", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.integer  "brand_id"
    t.integer  "device_cat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_spares", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "spare_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.decimal  "price",      precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password_digest"
    t.integer  "role_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
