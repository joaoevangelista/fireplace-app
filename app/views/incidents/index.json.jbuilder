json.array!(@incidents) do |incident|
  json.extract! incident, :id, :incident_type_id, :action_taken, :location, :user_id, :description, :open
  json.url incident_url(incident, format: :json)
end
