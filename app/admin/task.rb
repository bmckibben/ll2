ActiveAdmin.register Task do 
	
	menu parent: "ProjTime", priority: 3

	permit_params do
		permitted = [:user_id, :project_id, :name, :description, :task_status_id, :completed_at]
	end

end