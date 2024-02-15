class CreateAcTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :ac_transactions do |t|
      t.datetime :date
      t.decimal :amount
      t.text :description
      t.string :check_number
      t.references :ac_account, null: false, foreign_key: true
      t.references :ac_payee, null: false, foreign_key: true
      t.references :ac_category, null: false, foreign_key: true
      t.references :ac_sub_category, null: false, foreign_key: true
      t.references :ac_transaction_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
