class AcAccountsController < InheritedResources::Base

  private

    def ac_account_params
      params.require(:ac_account).permit(:name, :bank, :account_number, :opening_date, :datetime, :opening_balance, :active, :ac_group_id)
    end

end
