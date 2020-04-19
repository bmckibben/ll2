class CreateWikis < ActiveRecord::Migration[5.2]
  def change
    create_table :wikis do |t|
      t.string "title"
      t.integer "user_id"
      t.text "body"
      t.integer "parent"
      t.integer "version"
      t.boolean "deleted", default: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "default_sort", default: 0, null: false
      t.integer "last_revision", default: 0, null: false
      t.timestamps
    end
  end
end
