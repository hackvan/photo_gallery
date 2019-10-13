class Favorite < ApplicationRecord
  validates :photo_id, presence: true

  scope :recent, -> { order(created_at: :desc) }
end
