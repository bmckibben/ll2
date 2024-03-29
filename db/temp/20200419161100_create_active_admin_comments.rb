class CreateActiveAdminComments < ActiveRecord::Migration[5.2]
  def change
	  create_table "active_admin_comments", force: :cascade do |t|
	    t.string "namespace"
	    t.text "body"
	    t.string "resource_type"
	    t.bigint "resource_id"
	    t.string "author_type"
	    t.bigint "author_id"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
	    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
	    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
	  end
  end
end
