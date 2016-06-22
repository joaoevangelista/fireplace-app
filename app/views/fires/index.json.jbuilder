json.array!(@fires) do |fire|
  json.extract! fire, :id, :name, :original_area, :description
  json.url fire_url(fire, format: :json)
end
