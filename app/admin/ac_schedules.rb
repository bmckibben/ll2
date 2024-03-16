ActiveAdmin.register AcSchedule do
	menu parent: "Transactions", :priority => 6
	permit_params :amount, :description, :auto_insert, :frequency, :frequency_period, 
		:first_date, :type, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :ac_schedule_id, :schedule_date 
	index do
		column "ac_payee"
		column "amount"
	    column "first_date"	    
	    column "frequency"
	    column "frequency_period"
	   	column "next_date"
	    column "created_at"
	    column "updated_at"

		actions
	end
end
