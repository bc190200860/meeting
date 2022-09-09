json.extract! meeting, :id, :title, :description, :start_time, :duration, :password, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
