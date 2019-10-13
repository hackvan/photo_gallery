require "rails_helper"

describe "Viewing the list of photos" do
  it "shows the most recent photos" do
    visit photos_url

    expect(current_path).to eq(photos_path)
    expect(page).to have_text('By:')
    expect(page).to have_button('Mark')
  end

  it "shows the random photos" do
    visit photos_random_url

    expect(current_path).to eq(photos_random_path)
    expect(page).to have_text('By:')
    expect(page).to have_button('Mark')
  end

  it "shows the favorites photos" do
    visit photos_favorites_url

    expect(current_path).to eq(photos_favorites_path)
    expect(page.find('.col.text-center img')['alt']).to have_content('no photo founded')
    expect(page).not_to have_text('By:')
  end

  it "shows the search photos by a term" do
    visit root_url
    fill_in 'query', with: "colombia"
    click_button 'Search'

    expect(current_path).to eq(search_path)
    expect(page).to have_text('By:')
    expect(page).to have_button('Mark')
  end
end