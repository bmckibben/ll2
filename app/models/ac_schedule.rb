class AcSchedule < ApplicationRecord
  belongs_to :ac_account
  belongs_to :ac_payee
  belongs_to :ac_category
  belongs_to :ac_sub_category

  attr_accessor :ui_account, :ui_payee, :ui_category, :ui_sub_category
 
  def next_date

    last_transaction = AcTransaction.where(ac_schedule_id: self.id).order(:date).pluck(:date).last 

    if last_transaction.nil?
      last_transaction = self.first_date
    else
      last_transaction += self.frequency.send(self.period)
    end

    return last_transaction
    
  end

end
