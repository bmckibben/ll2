class TasksController < InheritedResources::Base
	
	before_action :authenticate_user!
	layout "projlog"

  private

    def task_params
      params.require(:task).permit(:name, :description, :priority, :start_date, :end_date)
    end

end
