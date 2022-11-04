class TaskTime < ApplicationRecord

	def update
		unless params[:end_at].blank?
			@task_time = TaskTime.new
		end
    respond_to do |format|
      format.html { render layout: false}
      format.json { render nothing: true }
    end		
	end

	def create
    respond_to do |format|
      format.html { render layout: false}
      format.json { render nothing: true }
    end		
	end

end
