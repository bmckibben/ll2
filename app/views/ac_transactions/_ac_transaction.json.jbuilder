json.extract! ac_transaction, :id, :date, :amount, :description, :check_number, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :ac_transaction_status_id, :created_at, :updated_at
json.url ac_transaction_url(ac_transaction, format: :json)
