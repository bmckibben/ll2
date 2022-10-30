class ProductsController < InheritedResources::Base
	layout "projlog"
  private

    def product_params
      params.require(:product).permit(:name, :description)
    end

end
