class CreateHtmlPages < ActiveRecord::Migration[5.2]
  def change
    create_table :html_pages do |t|
      t.string :title
      t.text :content
      t.boolean :active
      t.string :slug

      t.timestamps
    end
  end
end
