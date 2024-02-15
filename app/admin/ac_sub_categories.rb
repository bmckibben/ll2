ActiveAdmin.register AcSubCategory do
	menu parent: "Transactions", :priority => 7
	permit_params :name, :budget, :ac_category_id
	index do
	    column "name"
	    column "budget"
	    column "ac_category_id"
	    column "created_at"
	    column"updated_at"
		actions
	end
end
