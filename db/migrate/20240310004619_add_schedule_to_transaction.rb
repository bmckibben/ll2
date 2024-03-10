class AddScheduleToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_column :ac_transactions, :ac_schedule_id, :integer
  end
end
