class CreateAcAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :ac_accounts do |t|
      t.string :name
      t.string :bank
      t.string :account_number
      t.string :opening_date
      t.string :datetime
      t.decimal :opening_balance
      t.boolean :active
      t.references :ac_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
