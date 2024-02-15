class CreateAcTransactionStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :ac_transaction_statuses do |t|
      t.text :name
      t.integer :status_code

      t.timestamps
    end
  end
end
