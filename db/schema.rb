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

ActiveRecord::Schema[7.0].define(version: 2024_02_15_142259) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ac_accounts", force: :cascade do |t|
    t.string "name"
    t.string "bank"
    t.string "account_number"
    t.string "opening_date"
    t.string "datetime"
    t.decimal "opening_balance"
    t.boolean "active"
    t.bigint "ac_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ac_group_id"], name: "index_ac_accounts_on_ac_group_id"
  end

  create_table "ac_categories", force: :cascade do |t|
    t.string "name"
    t.decimal "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ac_groups", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ac_payees", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ac_schedules", force: :cascade do |t|
    t.decimal "amount"
    t.text "description"
    t.boolean "auto_insert"
    t.integer "frequency"
    t.string "frequency_period"
    t.date "first_date"
    t.string "type"
    t.bigint "ac_account_id", null: false
    t.bigint "ac_payee_id", null: false
    t.bigint "ac_category_id", null: false
    t.bigint "ac_sub_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ac_account_id"], name: "index_ac_schedules_on_ac_account_id"
    t.index ["ac_category_id"], name: "index_ac_schedules_on_ac_category_id"
    t.index ["ac_payee_id"], name: "index_ac_schedules_on_ac_payee_id"
    t.index ["ac_sub_category_id"], name: "index_ac_schedules_on_ac_sub_category_id"
  end

  create_table "ac_sub_categories", force: :cascade do |t|
    t.string "name"
    t.decimal "budget"
    t.bigint "ac_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ac_category_id"], name: "index_ac_sub_categories_on_ac_category_id"
  end

  create_table "ac_transaction_statuses", force: :cascade do |t|
    t.text "name"
    t.integer "status_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ac_transactions", force: :cascade do |t|
    t.datetime "date"
    t.text "description"
    t.string "check_number"
    t.bigint "ac_account_id", null: false
    t.bigint "ac_payee_id", null: false
    t.bigint "ac_category_id", null: false
    t.bigint "ac_sub_category_id", null: false
    t.bigint "ac_transaction_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "debit", precision: 10, scale: 2
    t.decimal "credit", precision: 10, scale: 2
    t.decimal "balance", precision: 10, scale: 2
    t.index ["ac_account_id"], name: "index_ac_transactions_on_ac_account_id"
    t.index ["ac_category_id"], name: "index_ac_transactions_on_ac_category_id"
    t.index ["ac_payee_id"], name: "index_ac_transactions_on_ac_payee_id"
    t.index ["ac_sub_category_id"], name: "index_ac_transactions_on_ac_sub_category_id"
    t.index ["ac_transaction_status_id"], name: "index_ac_transactions_on_ac_transaction_status_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "draws", force: :cascade do |t|
    t.datetime "draw_date"
    t.integer "b1"
    t.integer "s1"
    t.integer "b2"
    t.integer "s2"
    t.integer "b3"
    t.integer "s3"
    t.integer "b4"
    t.integer "s4"
    t.integer "b5"
    t.integer "s5"
    t.integer "powerball"
    t.integer "powerscore"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "start_at", precision: nil
    t.datetime "end_at", precision: nil
    t.text "notes"
    t.string "description"
    t.bigint "task_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_logs_on_task_id"
  end

  create_table "picks", force: :cascade do |t|
    t.datetime "draw_date"
    t.integer "b1"
    t.integer "s1"
    t.boolean "m1"
    t.integer "b2"
    t.integer "s2"
    t.boolean "m2"
    t.integer "b3"
    t.integer "s3"
    t.boolean "m3"
    t.integer "b4"
    t.integer "s4"
    t.boolean "m4"
    t.integer "b5"
    t.integer "s5"
    t.boolean "m5"
    t.integer "powerball"
    t.integer "powerscore"
    t.boolean "powermatch"
    t.decimal "won", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.bigint "client_id", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_products_on_client_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "due_at", precision: nil
    t.text "description"
    t.bigint "status_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_projects_on_product_id"
    t.index ["status_id"], name: "index_projects_on_status_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "ball"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.text "goal"
    t.text "disaster"
    t.text "reaction"
    t.text "dilemma"
    t.text "q1"
    t.text "q2"
    t.text "q3"
    t.boolean "sample", default: false
    t.index ["story_id"], name: "index_sections_on_story_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "author"
    t.string "cover_image"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.bigint "project_id", null: false
    t.text "notes"
    t.bigint "status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "priority"
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["status_id"], name: "index_tasks_on_status_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "login", limit: 45
    t.integer "role_cd"
    t.string "surname"
    t.string "forename"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wiki_tags", force: :cascade do |t|
    t.integer "wiki_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_wiki_tags_on_tag_id"
    t.index ["wiki_id"], name: "index_wiki_tags_on_wiki_id"
  end

  create_table "wikis", id: :serial, force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.text "body"
    t.integer "parent"
    t.string "version"
    t.string "integer"
    t.boolean "deleted"
    t.integer "default_sort"
    t.datetime "last_revision"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ac_accounts", "ac_groups"
  add_foreign_key "ac_schedules", "ac_accounts"
  add_foreign_key "ac_schedules", "ac_categories"
  add_foreign_key "ac_schedules", "ac_payees"
  add_foreign_key "ac_schedules", "ac_sub_categories"
  add_foreign_key "ac_sub_categories", "ac_categories"
  add_foreign_key "ac_transactions", "ac_accounts"
  add_foreign_key "ac_transactions", "ac_categories"
  add_foreign_key "ac_transactions", "ac_payees"
  add_foreign_key "ac_transactions", "ac_sub_categories"
  add_foreign_key "ac_transactions", "ac_transaction_statuses"
  add_foreign_key "logs", "tasks"
  add_foreign_key "products", "clients"
  add_foreign_key "projects", "products"
  add_foreign_key "projects", "statuses"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "statuses"
end
