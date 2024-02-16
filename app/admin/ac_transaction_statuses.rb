ActiveAdmin.register AcTransactionStatus do
	menu parent: "Transactions", :priority => 8
	permit_params :name, :status_code
	index do

	    column "name"
	    column "status_code"
	    column "created_at"
	    column "updated_at"   
		actions
	end
end
