class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.references :task_status, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :priority
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
