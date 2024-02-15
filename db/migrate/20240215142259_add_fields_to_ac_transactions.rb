class AddFieldsToAcTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :ac_transactions, :debit, :decimal, precision: 10, scale: 2
    add_column :ac_transactions, :credit, :decimal, precision: 10, scale: 2
    add_column :ac_transactions, :balance, :decimal, precision: 10, scale: 2
    remove_column :ac_transactions, :amount
  end
end
