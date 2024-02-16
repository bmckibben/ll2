class AcTransactionStatusesController < InheritedResources::Base

  private

    def ac_transaction_status_params
      params.require(:ac_transaction_status).permit(:name, :status_code)
    end

end
