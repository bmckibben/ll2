class CreateAcCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :ac_categories do |t|
      t.string :name
      t.decimal :budget

      t.timestamps
    end
  end
end
