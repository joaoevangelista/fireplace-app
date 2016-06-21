json.array!(@indicident_types) do |indicident_type|
  json.extract! indicident_type, :id, :name
  json.url indicident_type_url(indicident_type, format: :json)
end
