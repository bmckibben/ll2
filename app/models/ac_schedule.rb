class AcSchedule < ApplicationRecord
  belongs_to :ac_account
  belongs_to :ac_payee
  belongs_to :ac_category
  belongs_to :ac_sub_category

  attr_accessor :ui_account, :ui_payee, :ui_category, :ui_sub_category
 
  def next_date
    last_transaction = AcTransaction.where(ac_schedule_id: self.id).order(:date).last 
    unless last_transaction.nil?
      if last_transaction.id == 11
        binding.pry 
      end
    end

    if last_transaction.nil? || last_transaction.schedule_date.nil?
      next_date = self.first_date || Time.now
    else
      next_date = last_transaction.schedule_date + self.frequency.send(self.frequency_period.downcase)
    end

    return next_date

  end

  def ui_payee
    AcPayee.find(self.ac_payee_id).name unless self.ac_payee_id.nil?
  end

  def ui_category
    AcCategory.find(self.ac_category_id).name unless self.ac_category_id.nil?
  end

  def ui_sub_category
    AcSubCategory.find(self.ac_sub_category_id).name unless self.ac_sub_category_id.nil?
  end

end
