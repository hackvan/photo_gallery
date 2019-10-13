module FavoritesHelper
  def fav_classes(is_favorite)
    is_favorite ? "btn btn-info hidden" : "btn btn-info"
  end

  def unfav_classes(is_favorite)
    is_favorite ? "btn btn-secondary" : "btn btn-secondary hidden"
  end
end
