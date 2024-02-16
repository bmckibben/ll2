class AcCategoriesController < InheritedResources::Base

  private

    def ac_category_params
      params.require(:ac_category).permit(:name, :budget)
    end

end
