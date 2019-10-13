require 'rails_helper'

RSpec.describe 'A favorite' do
  context 'validations' do
    it 'requires a photo id' do
      fav = Favorite.new
  
      fav.valid?
  
      expect(fav.errors[:photo_id].any?).to eq(true)
    end
  end

  context 'recent scope' do
    it 'returns a photos marked as a favorites ordered with the most recent first' do
      fav_photo_1 = Favorite.create!(photo_id: '123')
      fav_photo_2 = Favorite.create!(photo_id: '456')
      fav_photo_3 = Favorite.create!(photo_id: '789')
      fav_photo_4 = Favorite.create!(photo_id: '000')

      expect(Favorite.recent).to eq([fav_photo_4, fav_photo_3, fav_photo_2, fav_photo_1])
    end
  end
end