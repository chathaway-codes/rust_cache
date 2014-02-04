json.array!(@caches) do |cach|
  json.extract! cach, :id, :server_id, :name, :x, :y, :z, :secured, :notes
  json.url cach_url(cach, format: :json)
end
