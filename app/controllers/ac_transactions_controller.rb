class AcTransactionsController < InheritedResources::Base

  before_action :authenticate_user!

  private

    def ac_transaction_params
      params.require(:ac_transaction).permit(:date, :debit, :credit, :balance, :description, :check_number, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :ac_transaction_status_id)
    end

end
