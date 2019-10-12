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
end
