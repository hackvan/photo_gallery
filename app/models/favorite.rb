class Favorite < ApplicationRecord
  validates :photo_id, presence: true
end
