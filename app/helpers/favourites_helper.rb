module FavouritesHelper
  def favourite_text
    return @favourite_exists ? '즐겨찾기에서 제거' : '즐겨찾기에 추가'
  end
  def favourite_class
    return @favourite_exists ? 'glyphicon glyphicon-star' : 'glyphicon glyphicon-star-empty'
  end
end
