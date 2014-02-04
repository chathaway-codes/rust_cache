json.array!(@caches) do |cach|
  json.extract! cach, :id, :server_id, :location_id, :secured, :notes
  json.url cach_url(cach, format: :json)
end
