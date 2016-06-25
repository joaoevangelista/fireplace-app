json.array!(@severity_levels) do |severity_level|
  json.extract! severity_level, :id, :name, :color
  json.url severity_level_url(severity_level, format: :json)
end
