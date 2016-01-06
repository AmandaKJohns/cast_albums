class AlbumsController < ApplicationController
  
  def index
    data = Adapters::SpotifyClient.new
    @albums = data.find_cast_albums
    binding.pry
  end

end
