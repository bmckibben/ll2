class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :project_status, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :color
      t.decimal :rate, precision: 8, scale: 2
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
