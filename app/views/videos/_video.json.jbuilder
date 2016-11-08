json.extract! video, :id, :name, :link, :year, :created_at, :updated_at
json.url video_url(video, format: :json)