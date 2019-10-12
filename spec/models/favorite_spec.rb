require 'rails_helper'

RSpec.describe 'A favorite' do
  it 'requires a photo id' do
    fav = Favorite.new

    fav.valid?

    expect(fav.errors[:photo_id].any?).to eq(true)
  end
end