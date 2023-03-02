class FavouritesController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user
  
  def update
    favourite = Favourite.where(song_id: params[:song_id], user_id: params[:id])
    if favourite == []
      Favourite.create(song_id: params[:song_id], user_id: params[:id])
      @favourite_exists = true
    else
      favourite.destroy_all
      @favourite_exists = false
    end

    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def show
    @fav = Favourite.where(user_id: params[:id])
    @categories = Category.all
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
