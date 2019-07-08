require 'rails_helper'

# As a user,
feature 'user can search for foods' do
  scenario 'returns total number of results for search &
            returns list of 10 foods sorted by relevance' do

      # When I visit "/"
      visit '/'

      # And I fill in the search form with "sweet potatoes"
      # (Note: Use the existing search form)
      fill_in "q", with: "sweet potatoes"

      # And I click "Search"
      click_button "Search"

      # Then I should be on page "/foods"
      expect(current_path).to eq(foods_path)

      # Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
      within "#total_results" do
        expect(page).to have_content("531 results")
      end

      # Then I should see a list of ten foods sorted by relevance.
      within "#search_results" do
        expect(page).to have_css('.search_result', count: 10)
      end

      # And for each of the foods I should see:
      # - The food's NDB Number
      # - The food's name
      # - The food group to which the food belongs
      # - The food's data source
      # - The food's manufacturer
      within(first(".search_result")) do
        expect(page).to have_css("#ndb_number")
        expect(page).to have_css("#name")
        expect(page).to have_css("#group")
        expect(page).to have_css("#data_source")
        expect(page).to have_css("#manufacturer")
      end
    end
  end
