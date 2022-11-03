ActiveAdmin.register Project do 
	
	menu parent: "ProjTime", priority: 2

	permit_params do
		permitted = [:user_id, :product_id, :name, :description, :color, :project_status_id, :rate, :disabled_at]
	end

end