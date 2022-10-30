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

ActiveRecord::Schema[7.0].define(version: 2022_10_30_121100) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.datetime "date", precision: nil
    t.integer "ball_1"
    t.integer "ball_2"
    t.integer "ball_3"
    t.integer "ball_4"
    t.integer "ball_5"
    t.integer "powerball"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.decimal "predicted_1"
    t.decimal "predicted_2"
    t.decimal "predicted_3"
    t.decimal "predicted_4"
    t.decimal "predicted_5"
    t.decimal "predicted_powerball"
  end

  create_table "html_pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "active"
    t.string "slug"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.string "name"
    t.string "color"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.decimal "rate", precision: 8, scale: 2
    t.datetime "disabled_at", precision: nil
    t.index ["product_id"], name: "index_projects_on_product_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "author"
    t.text "quote"
    t.boolean "active"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "section_footnotes", force: :cascade do |t|
    t.integer "a_number"
    t.text "footnote"
    t.bigint "section_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["section_id"], name: "index_section_footnotes_on_section_id"
  end

  create_table "section_notes", force: :cascade do |t|
    t.text "note"
    t.bigint "section_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["section_id"], name: "index_section_notes_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.integer "sequence"
    t.text "summary"
    t.text "body"
    t.string "throughline"
    t.text "resolution"
    t.text "conflict"
    t.bigint "story_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "draft", default: 1
    t.index ["story_id"], name: "index_sections_on_story_id"
  end

  create_table "slots", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "task_id", null: false
    t.integer "start_at"
    t.integer "end_at"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["task_id"], name: "index_slots_on_task_id"
    t.index ["user_id"], name: "index_slots_on_user_id"
  end

  create_table "stories", force: :cascade do |t|
    t.text "title"
    t.text "subtitle"
    t.string "abbreviated_title"
    t.text "short_summary"
    t.text "long_summary"
    t.integer "word_count"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "cover_image"
    t.string "author"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "project_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "completed_at", precision: nil
    t.index ["completed_at"], name: "index_tasks_on_completed_at"
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "login", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role_cd", default: 0, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "time_zone"
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wiki_tags", id: :serial, force: :cascade do |t|
    t.integer "wiki_id"
    t.integer "tag_id"
    t.index ["tag_id"], name: "index_wiki_tags_on_tag_id"
    t.index ["wiki_id"], name: "index_wiki_tags_on_wiki_id"
  end

  create_table "wikis", id: :serial, force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.text "body"
    t.integer "parent"
    t.integer "version"
    t.boolean "deleted", default: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "default_sort", default: 0, null: false
    t.integer "last_revision", default: 0, null: false
  end

  add_foreign_key "projects", "products"
  add_foreign_key "projects", "users"
  add_foreign_key "slots", "tasks"
  add_foreign_key "slots", "users"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "users"
end
