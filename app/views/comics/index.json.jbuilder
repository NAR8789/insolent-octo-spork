json.array!(@comics) do |comic|
  json.extract! comic, :id, :name, :link, :artist_id, :default_description
  json.url comic_url(comic, format: :json)
end
