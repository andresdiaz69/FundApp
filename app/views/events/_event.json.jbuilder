json.extract! event, :id, :title, :description, :poitns, :initial_date, :final_date, :active, :created_at, :updated_at
json.url event_url(event, format: :json)
