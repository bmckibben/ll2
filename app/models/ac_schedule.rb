class AcSchedule < ApplicationRecord
  belongs_to :ac_account
  belongs_to :ac_payee
  belongs_to :ac_category
  belongs_to :ac_sub_category

  attr_accessor :ui_account, :ui_payee, :ui_category, :ui_sub_category
 
  def next_date

    last_transaction = AcTransaction.where(ac_schedule_id: self.id).order(:date).last 

    if last_transaction.nil?
      next_date = self.first_date
    else
      next_date = last_transaction.schedule_date + self.frequency.send(self.frequency_period.downcase)
    end

    return next_date

  end

end
