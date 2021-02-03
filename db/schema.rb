# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_03_203527) do

  create_table "articles", charset: "utf8mb4", force: :cascade do |t|
    t.integer "page_id"
    t.string "name"
    t.integer "position"
    t.boolean "visible", default: true
    t.text "content_text"
    t.string "images_file_name"
    t.string "images_content_type"
    t.bigint "images_file_size"
    t.datetime "images_updated_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "position"
    t.boolean "visible"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "galeries", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 20
    t.integer "position"
    t.text "description"
    t.boolean "visibly", default: true
    t.string "photos_file_name"
    t.string "photos_content_type"
    t.bigint "photos_file_size"
    t.datetime "photos_updated_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", charset: "utf8mb4", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.integer "position"
    t.boolean "visible", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_pages_on_category_id"
  end

  create_table "photos", charset: "utf8mb4", force: :cascade do |t|
    t.integer "galery_id"
    t.string "name"
    t.integer "position"
    t.boolean "visible", default: true
    t.string "description"
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.bigint "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "surname", limit: 60
    t.string "user", limit: 25
    t.string "email", limit: 100, default: "", null: false
    t.string "phone", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user"], name: "index_users_on_user"
  end

end
