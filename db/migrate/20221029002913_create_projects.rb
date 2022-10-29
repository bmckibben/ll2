class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.datetime :start_date
      t.string :color
      t.datetime :end_date

      t.timestamps
    end
  end
end
