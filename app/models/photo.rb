class Photo
  include ActiveModel::Model

  attr_accessor :id, :description, :image_url, :thumb_url, :source_url, 
                :user_id, :user_name, :user_url

  validates :id, presence: true
  validates :image_url, presence: true

  def favorites
    Favorite.where("photo_id = ?", self.id)
  end

  def is_favorite?
    self.favorites.exists?
  end

  def self.get_photos
    Unsplash::API.get_photos
  end

  def self.get_random_photos
    Unsplash::API.get_random_photos
  end

  def self.get_search_photos(query)
    Unsplash::API.get_search_photos(query: query)
  end

  def self.get_favorites_photos
    Unsplash::API.get_favorites_photos
  end
end
