require 'rails_helper'

# As a user
describe "As a user" do
	describe "when I visit the home directory" do
		it " I can search by a zip code and get 10 results" do
			# When I visit "/"
			visit '/'
			# And I fill in the search form with 80203
			fill_in "q", with: "80203"
			# And I click "Locate"
			click_on("Locate")
			# Then I should be on page "/search" with parameters visible in the url
			expect(current_path).to eq('/search')
			# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
			within('.station') do
				binding.pry
				expect(page.body.count).to eq(10)
			end
			# And the stations should be limited to Electric and Propane
			expect(page.body).to include("Electric")
			expect(page).to include("Propane")
			# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
			expect(page).to include("Propane")
			
		end
	end
end