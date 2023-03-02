class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @song.views += 1
    @song.save
    @album = @song.album
    if logged_in?
      @favourite_exists = Favourite.where(song_id: params[:id], user_id: current_user.id) == [] ? false : true
    end
  end
end
