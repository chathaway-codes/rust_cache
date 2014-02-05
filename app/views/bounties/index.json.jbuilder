json.array!(@bounties) do |bounty|
  json.extract! bounty, :id, :server_id, :who, :why
  json.url bounty_url(bounty, format: :json)
end
