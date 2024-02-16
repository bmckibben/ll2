class CreateWikiTags < ActiveRecord::Migration[5.2]
  def change
    create_table :wiki_tags do |t|
      t.integer "wiki_id"
      t.integer "tag_id"
      t.index ["tag_id"], name: "index_wiki_tags_on_tag_id"
      t.index ["wiki_id"], name: "index_wiki_tags_on_wiki_id"
      t.timestamps
    end
  end
end
