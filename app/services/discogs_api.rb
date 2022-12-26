class DiscogsApi
  def self.fetch_artist
    artist_id = rand(100_000)

    request = HTTParty.get("https://api.discogs.com/artists/#{artist_id}")

    response = OpenStruct.new(request.parsed_response)

    response = fetch_artist if response.message == 'Artist not found.'

    response
  end
end
