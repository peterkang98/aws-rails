class SearchController < ApplicationController
  def show
    if params[:query].blank?
      flash[:danger] = '검색어를 입력하세요'
      redirect_to root_url and return
    else
      query = Song.sanitize_sql_like(params[:query].downcase)
      @artists = Artist.where('lower(original_name) LIKE ?', "#{query}%").or(
        Artist.where('lower(korean_name) LIKE ?', "#{query}%"))
      @songs = Song.where('lower(title) LIKE ?', "%#{query}%")
      @artist_songs = []
      if !@artists.empty?
        @artists.each do |artist|
          @artist_songs << artist.songs
        end
      end
    end
  end
end
