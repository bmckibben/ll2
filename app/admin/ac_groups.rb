ActiveAdmin.register AcGroup do
	menu parent: "Transactions", :priority => 4
	permit_params :name, :active
	index do
	    column "name"
	    column "active"
	    column "created_at"
	    column "updated_at"	    
		actions
	end
end
