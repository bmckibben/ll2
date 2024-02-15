class AcPayeesController < InheritedResources::Base

  private

    def ac_payee_params
      params.require(:ac_payee).permit(:name, :active)
    end

end
