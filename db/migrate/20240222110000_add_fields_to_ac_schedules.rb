class AddFieldsToAcSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :ac_schedules, :debit, :decimal, precision: 10, scale: 2
    add_column :ac_schedules, :credit, :decimal, precision: 10, scale: 2
    remove_column :ac_schedules, :amount
  end
end
