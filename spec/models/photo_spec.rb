require 'rails_helper'

RSpec.describe 'A photo' do
  context 'validations' do
    it 'is valid with example attributes' do
      photo = Photo.new(photo_attributes)

      expect(photo.valid?).to eq(true)
    end

    it 'requires an id' do
      photo = Photo.new(photo_attributes(id: ''))

      photo.valid?

      expect(photo.errors[:id].any?).to eq(true)
    end

    it 'requires an image url' do
      photo = Photo.new(photo_attributes(image_url: ''))

      photo.valid?

      expect(photo.errors[:image_url].any?).to eq(true)
    end
  end
  
  context 'with favs' do
    it 'has many fans' do
      photo = Photo.new(photo_attributes)

      photo.favorites.create(photo_id: photo.id)

      expect(photo.is_favorite?).to eq(true)
    end
  end
end