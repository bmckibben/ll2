ActiveAdmin.register Slot do 
	
	menu parent: "ProjTime", priority: 4

	permit_params do
		permitted = [:user_id, :task_id, :description, :start_at, :end_at]
	end

end