ActiveAdmin.register Product do 
	
	menu parent: "ProjTime", priority: 1

	permit_params do
		permitted = [:name, :description]
	end

end