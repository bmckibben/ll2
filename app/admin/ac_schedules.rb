ActiveAdmin.register AcSchedule do
	menu parent: "Transactions", :priority => 6
	permit_params :amount, :description, :auto_insert, :frequency, :frequency_period, 
		:first_date, :type, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id 
	index do
		column "amount"
	    column "description"
	    column "auto_insert"
	    column "frequency"
	    column "frequency_period"
	    column "first_date"
	    column "type"
	    column "ac_account_id"
	    column "ac_payee_id"
	    column "ac_category_id"
	    column "ac_sub_category_id"
	    column "created_at"
	    column "updated_at"

		actions
	end
end
