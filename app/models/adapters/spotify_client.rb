module Adapters
  class SpotifyClient

    def connection
      @connection = Adapters::DataConnection.new
    end

    def find_cast_albums
      url = 'https://api.spotify.com/v1/search?q=broadway%20cast&type=artist'
      connection.query(url)
    end

  end
end