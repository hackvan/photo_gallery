class FavoritesController < ApplicationController
  def create
    @photo_id = params[:photo_id]
    @favorite = Favorite.find_by(photo_id: @photo_id)
    unless @favorite
      @favorite = Favorite.create(photo_id: @photo_id)
      render
    end
  end

  def destroy
    @photo_id = params[:photo_id]
    @favorite = Favorite.find_by(photo_id: @photo_id)
    if @favorite&.destroy
      render
    end
  end
end
