json.extract! task_time, :id, :description, :start_date, :end_date, :created_at, :updated_at
json.url task_time_url(task_time, format: :json)
