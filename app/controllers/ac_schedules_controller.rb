class AcSchedulesController < InheritedResources::Base

  private

    def ac_schedule_params
      params.require(:ac_schedule).permit(:amount, :description, :auto_insert, :frequency, :frequency_period, :first_date, :type, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id)
    end

end
