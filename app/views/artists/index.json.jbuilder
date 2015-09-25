json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :link
  json.url artist_url(artist, format: :json)
end
