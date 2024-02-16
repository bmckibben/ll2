class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.datetime "transaction_date", null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.string "payee"
      t.references "transaction_category"
      t.references "transaction_subcategory"
      t.references "transaction_status"
      t.references "transaction_type"
      t.decimal "amount" precision: 8, scale: 2
      t.timestamps
    end
  end
end
