class AcTransaction < ApplicationRecord
  belongs_to :ac_account
  belongs_to :ac_payee
  belongs_to :ac_category
  belongs_to :ac_sub_category
  belongs_to :ac_transaction_status

  attr_accessor :ui_account, :ui_payee, :ui_category, :ui_sub_category, :ui_transaction_status
end
