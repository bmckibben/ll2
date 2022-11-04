class ProjectsController < InheritedResources::Base

  private

    def project_params
      params.require(:project).permit(:name, :description, :color, :start_date, :end_date)
    end

end
