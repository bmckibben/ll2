class AddScheduleDateToTransaction < ActiveRecord::Migration[7.0]
  def change
      add_column :ac_transactions, :schedule_date, :date
  end
end
