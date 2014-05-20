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

ActiveRecord::Schema.define(version: 20140520013338) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "manager"
    t.string   "status"
    t.integer  "terms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "job_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.datetime "date"
    t.string   "company"
    t.decimal  "tax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status_type"
    t.integer  "employee_id"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.string   "category"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["invoice_id"], name: "index_items_on_invoice_id"

  create_table "purchases", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "quantity"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
  end

  add_index "purchases", ["invoice_id"], name: "index_purchases_on_invoice_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
