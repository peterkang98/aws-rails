class PagesController < ApplicationController
  def home
    @albums = Album.limit(5).order("RANDOM()")
    @categories = Category.all
    @songs = Song.limit(10).order('views DESC')
    @artists = Artist.limit(10).order('views DESC')
    @songs_new = Song.limit(10).order('created_at DESC')
  end
end
