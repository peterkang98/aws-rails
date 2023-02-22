class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @album = @song.album
  end
end
