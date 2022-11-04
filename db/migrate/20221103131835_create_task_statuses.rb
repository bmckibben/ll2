class CreateTaskStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :task_statuses do |t|
      t.text :name

      t.timestamps
    end
  end
end
