class AcTransaction < ApplicationRecord
  belongs_to :ac_account
  belongs_to :ac_payee
  belongs_to :ac_category
  belongs_to :ac_sub_category
  belongs_to :ac_transaction_status

  attr_accessor :ui_account, :ui_payee, :ui_category, :ui_sub_category, :ui_transaction_status

  before_save :set_running_balance
  after_update :recalc_running_balance

  private

  # !!!ACCOUNT FOR DATE SORT WHEN CALCULATING BALANCE!!!

  def set_running_balance
    previous_balance = previous_transaction.try(:balance) || 10000
    self.balance = previous_balance + (self.credit || 0) - (self.debit || 0)
  end

  def recalc_running_balance
    # this will recursively trigger the `recalculate_next_running_balance` 
    # callback on the following transactions and thereby update all later 
    # transactions
    next_transaction.try(:save)
  end

  def previous_transaction
    scope = AcTransaction.order(:date)
    scope = scope.where('date < ?', date) if persisted?

    scope.last
  end

  def next_transaction
    return if new_record?

    AcTransaction.where('date > ?', date).order(:date).first
  end

end
