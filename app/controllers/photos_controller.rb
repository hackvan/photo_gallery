class PhotosController < ApplicationController
  def index
    @photos = Unsplash::API.get_photos
  end

  def random
    @photos = Unsplash::API.get_random_photos(count: 12)
    render :index
  end

  def search
    @photos = Unsplash::API.get_search_photos(query: search_param[:query])
    render :index
  end

  private
    def search_param
      params.permit(:query)
    end
end
