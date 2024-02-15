ActiveAdmin.register AcTransaction do
	menu parent: "Transactions", :priority => 1
	permit_params :date, :credit, :debit, :balance, :description, :check_number, :ac_account_id, :ac_payee_id, 
		:ac_category_id, :ac_sub_category_id, :ac_transaction_status_id
	index do
		column :id
		column :date
		column :amount
		column :desctiption
		column :check_number
		column :payee
		column :category
		column :sub_category
		column :transaction_status
		column :debit
		column :credit
		column :balance
		column :created_at
		actions
	end
end
