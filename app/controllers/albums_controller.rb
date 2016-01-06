class AlbumsController < ApplicationController
  
  def index
    data = Adapters::SpotifyClient.new
    album_data = data.find_cast_albums
    @albums = album_data['albums']['items']
    binding.pry
  end

end
