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

ActiveRecord::Schema.define(version: 20170628063507) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "cproducts", force: :cascade do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.string   "Imagen"
    t.integer  "User_id"
    t.integer  "Pcategory_id"
    t.integer  "Status_id"
    t.integer  "Trademark_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cproducts", ["Pcategory_id"], name: "index_cproducts_on_Pcategory_id"
  add_index "cproducts", ["Status_id"], name: "index_cproducts_on_Status_id"
  add_index "cproducts", ["Trademark_id"], name: "index_cproducts_on_Trademark_id"
  add_index "cproducts", ["User_id"], name: "index_cproducts_on_User_id"

  create_table "pcategories", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.integer  "Precio"
    t.integer  "Stock"
    t.string   "Imagen"
    t.integer  "Ptype_id"
    t.integer  "Pcategory_id"
    t.integer  "Status_id"
    t.integer  "Trademark_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["Pcategory_id"], name: "index_products_on_Pcategory_id"
  add_index "products", ["Ptype_id"], name: "index_products_on_Ptype_id"
  add_index "products", ["Status_id"], name: "index_products_on_Status_id"
  add_index "products", ["Trademark_id"], name: "index_products_on_Trademark_id"

  create_table "ptypes", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trademarks", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "Nombre"
    t.string   "Apellido"
    t.string   "Rut"
    t.string   "Direccion"
    t.integer  "Telefono"
    t.integer  "Fonoalt"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "usertype_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["usertype_id"], name: "index_users_on_usertype_id"

  create_table "usertypes", force: :cascade do |t|
    t.string   "Nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
