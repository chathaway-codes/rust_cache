json.array!(@locations) do |location|
  json.extract! location, :id, :x, :y, :z
  json.url location_url(location, format: :json)
end
