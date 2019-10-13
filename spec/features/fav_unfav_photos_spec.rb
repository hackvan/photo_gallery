require "rails_helper"

describe 'marks photos' do
  xit 'as a favorite' do
    pending('Not Yet Implemented - Fix remote true forms')
    visit photos_url

    expect(current_path).to eq(photos_path)
    expect(page).to have_button('Mark')

    click_button('Mark', match: :first)

    expect(page).to have_button('Unmark')
  end

  xit 'as an unfavorite' do
    pending('Not Yet Implemented - Fix remote true forms')
    visit photos_url
    click_button('Mark', match: :first)
    visit photos_favorites_url

    expect(current_path).to eq(photos_favorites_path)
    expect(page).to have_button('Unmark')

    click_button('Unmark', match: :first)
    expect(page).to have_button('Mark')
  end
end