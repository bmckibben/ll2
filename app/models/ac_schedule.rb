class AcSchedule < ApplicationRecord
  belongs_to :ac_account
  belongs_to :ac_payee
  belongs_to :ac_category
  belongs_to :ac_sub_category

  attr_accessor :ui_account, :ui_payee, :ui_category, :ui_sub_category
 
  def next_date

    last_transaction = AcTransaction.where(ac_payee_id: self.ac_payee_id, ac_category_id: self.ac_category_id, ac_sub_category_id: self.ac_sub_category_id).order(:date).pluck(:date).last || Date.current()

    puts "#{last_transaction.strftime("%Y.%m.%d")}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    last_transaction + self.frequency.public_send(self.frequency_period.downcase)
  end

end
