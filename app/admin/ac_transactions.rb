ActiveAdmin.register AcTransaction do
	menu parent: "Transactions", :priority => 1
	permit_params :date, :credit, :debit, :balance, :description, :check_number, :ac_account_id, :ac_payee_id, 
		:ac_category_id, :ac_sub_category_id, :ac_transaction_status_id, :ac_schedule_id, :schedule_date
	index do
		column :id
		column :date
		column :amount
		column :check_number
		column :ac_payee
		column :ac_category
		column :ac_sub_category
		column :ac_transaction_status
		column :debit
		column :credit
		column :ac_schedule_id
		column :schedule_date
		column :created_at
		actions

		csv do
        	column :check_number
			column :date
			column :ac_payee
			column :ac_category
			column :ac_sub_category
			column :debit
			column :credit	
        end
		
	end

  form do |f|
    f.inputs do
      f.input :ac_account
      f.input :ac_payee
      f.input :ac_category
      f.input :ac_sub_category
      f.input :ac_transaction_status
      f.input :date
      f.input :description
      f.input :check_number
      f.input :debit
      f.input :credit
      f.input :ac_schedule_id
      f.input :schedule_date
    end
    f.actions
  end

end
