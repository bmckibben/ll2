class TaskTimesController < InheritedResources::Base

  private

    def task_time_params
      params.require(:task_time).permit(:description, :start_date, :end_date)
    end

end
