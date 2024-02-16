ActiveAdmin.register AcAccount do
	menu parent: "Transactions", :priority => 2
	permit_params :name, :bank, :account_number, :opening_date, :datetime, :opening_balance, :active, :ac_group_id
	index do
	    column "name"
	    column "bank"
	    column "account_number"
	    column "opening_date"
	    column "datetime"
	    column "opening_balance"
	    column "active"
		actions
	end
end
