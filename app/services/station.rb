class Station
	attr_reader :name, :address, :fuel_type, :access_time, :distance
	
	def initialize(name, address, fuel_type, access_time, distance = 1)
		@name = name
		@address = address
		@fuel_type = fuel_type
		@access_time = access_time
		@distance = distance
	end
	
end
	