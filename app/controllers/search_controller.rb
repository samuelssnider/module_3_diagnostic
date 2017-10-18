class SearchController < ApplicationController
	def index
		@conn = Faraday.new(:url => "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?zip=#{params["q"]}&api_key=rOGt9pf9T3SBf4VgozAJLWFVytWH0Td2k4SFr8Yi&format=JSON") do
			faraday,adapter Faraday.default_adapter
		end
		stations = JSON.parse(@conn.get)
		binding.pry
	end
end