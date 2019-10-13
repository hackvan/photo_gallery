require 'rails_helper'

RSpec.describe Unsplash::API do
  it '#get_photos' do
    photos = Unsplash::API.get_photos
    expect(photos).to be_a_kind_of(Array)
    expect(photos.first).to be_a_kind_of(Photo)
    expect(photos.size).to eq(10)
  end

  it '#get_random_photos' do
    photos = Unsplash::API.get_random_photos(count: 10)
    expect(photos).to be_a_kind_of(Array)
    expect(photos.first).to be_a_kind_of(Photo)
    expect(photos.size).to eq(10)
  end

  it '#get_search_photos' do
    photos = Unsplash::API.get_search_photos(query: 'colombia', per_page: '10')
    expect(photos).to be_a_kind_of(Array)
    expect(photos.first).to be_a_kind_of(Photo)
    expect(photos.size).to eq(10)
  end

  it '#get_photo' do
    photo = Unsplash::API.get_photo('Xn5FbEM9564')
    expect(photo).to be_a_kind_of(Photo)
  end

  it '#get_favorites_photos' do
    favorite = Favorite.create!(photo_id: 'Xn5FbEM9564')
    photos = Unsplash::API.get_favorites_photos
    expect(photos).to be_a_kind_of(Array)
    expect(photos.first).to be_a_kind_of(Photo)
    expect(photos.size).to eq(1)
  end
end
