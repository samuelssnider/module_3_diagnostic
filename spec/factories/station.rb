FactoryGirl.define do
	types = ["Propane", "Electric", "Diesel"]
  factory :station do
    name Faker::Name.name
    address  Faker::address
		fuel_type types.sample
		distance 10
		access_time 360
  end
end