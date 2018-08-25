json.extract! event_user, :id, :event_foundation_id, :user_id, :points, :dateEvent, :created_at, :updated_at
json.url event_user_url(event_user, format: :json)
