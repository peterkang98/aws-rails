class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @artist.views += 1
    @artist.save
  end
end
