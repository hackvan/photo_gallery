class PhotosController < ApplicationController
  def index
    @title  = 'Photos'
    @header = 'Recently Photos'
    @photos = Photo.get_photos
  end

  def random
    @title  = 'Random'
    @header = 'Random Photos'
    @photos = Photo.get_random_photos
    render :index
  end

  def search
    @title  = 'Search'
    @header = "Related searches to '#{search_param[:query]}'"
    @photos = Photo.get_search_photos(search_param[:query])
    render :index
  end

  def favorites
    @title  = 'Favorites'
    @header = 'Favorite Photos'
    @photos = Photo.get_favorites_photos
    render :index
  end

  private
    def search_param
      params.permit(:query)
    end
end
