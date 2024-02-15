json.extract! ac_schedule, :id, :amount, :description, :auto_insert, :frequency, :frequency_period, :first_date, :type, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :created_at, :updated_at
json.url ac_schedule_url(ac_schedule, format: :json)
