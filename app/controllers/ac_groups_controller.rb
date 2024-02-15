class AcGroupsController < InheritedResources::Base

  private

    def ac_group_params
      params.require(:ac_group).permit(:name, :active)
    end

end
