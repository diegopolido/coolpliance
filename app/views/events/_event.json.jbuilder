json.extract! event, :id, :start_at, :end_at, :company_id, :created_at, :updated_at
json.url event_url(event, format: :json)
