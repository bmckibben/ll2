class AcSubCategoriesController < InheritedResources::Base

  private

    def ac_sub_category_params
      params.require(:ac_sub_category).permit(:name, :budget, :ac_category_id)
    end

end
