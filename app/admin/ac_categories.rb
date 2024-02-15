ActiveAdmin.register AcCategory do
	menu parent: "Transactions", :priority => 3
	permit_params :name, :budget
	index do
	    column "name"
	    column "budget"
	    column "created_at"
	    column "updated_at"	    
		actions
	end
end
