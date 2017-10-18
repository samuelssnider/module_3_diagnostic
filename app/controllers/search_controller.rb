class SearchController < ApplicationController
	def index
		conn = Faraday.new(:url => "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?zip=#{params["q"]}&api_key=rOGt9pf9T3SBf4VgozAJLWFVytWH0Td2k4SFr8Yi&format=JSON") do |faraday|
			faraday.adapter Faraday.default_adapter
		end
		stations_json = (conn.get.body)
		stations_total_data = JSON.parse(stations_json)
		stations_data = stations_total_data[:fuel_stations]
		stations_data.each do |station_data|
			Station.new(
				station_data["station_name"],
				station_data["station_address"]
				station_data["fuel_type_code"]
				station_data["access_days_time"]
			)
	end
end