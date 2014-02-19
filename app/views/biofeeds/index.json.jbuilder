json.array!(@biofeeds) do |biofeed|
  json.extract! biofeed, :id, :description
  json.url biofeed_url(biofeed, format: :json)
end
