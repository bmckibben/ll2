class CreateSectionFootnotes < ActiveRecord::Migration[5.2]
  def change
    create_table :section_footnotes do |t|
      t.integer :a_number
      t.text :footnote
      t.references :section, index: true

      t.timestamps
    end
  end
end
