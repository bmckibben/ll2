class CreateAcSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :ac_sub_categories do |t|
      t.string :name
      t.decimal :budget
      t.references :ac_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
