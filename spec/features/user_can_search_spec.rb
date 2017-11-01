require 'rails_helper'

describe "As a user I can search by valid zipcode" do
  it "and recieve the locations of stores within 25 miles of that zip code" do
    visit "/"
    fill_in "zip", with:"80202"
    click_on "Search"

    expect(current_path).to eq("/search")
    # expect(page).to have_content("17 Total Stores")
    expect(page).to have_css('.store', count:10)

    within(first('.store')) do
    expect(page).to have_css('.name')
    expect(page).to have_css('.city')
    expect(page).to have_css('.distance')
    expect(page).to have_css('.phone')
    expect(page).to have_css('.type')
    end
  end
end
