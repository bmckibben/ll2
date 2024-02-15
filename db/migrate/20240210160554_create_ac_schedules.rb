class CreateAcSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :ac_schedules do |t|
      t.decimal :amount
      t.text :description
      t.boolean :auto_insert
      t.integer :frequency
      t.string :frequency_period
      t.date :first_date
      t.string :type
      t.references :ac_account, null: false, foreign_key: true
      t.references :ac_payee, null: false, foreign_key: true
      t.references :ac_category, null: false, foreign_key: true
      t.references :ac_sub_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
