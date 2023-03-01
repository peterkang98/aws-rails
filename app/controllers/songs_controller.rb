class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @song.views += 1
    @song.save
    @album = @song.album
  end
end
