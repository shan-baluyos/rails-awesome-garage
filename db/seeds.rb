# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "creating owners.."
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

owner1 = Owner.create!(nickname: "Romeo")
owner2 = Owner.create!(nickname: "Giada")
owner3 = Owner.create!(nickname: "Shan")
owner4 = Owner.create!(nickname: "Lloyd")
owner5 = Owner.create!(nickname: "Frank")
owner6 = Owner.create!(nickname: "Doris")
owner7 = Owner.create!(nickname: "Nico")
owner8 = Owner.create!(nickname: "Maeva")
owner9 = Owner.create!(nickname: "Enzo")
owner10 = Owner.create!(nickname: "Liam")
owner11 = Owner.create!(nickname: "Vic")
owner12 = Owner.create!(nickname: "Pina")

puts "creating cars.."

Car.create!(
  brand: "Aston Martin",
  model: "Vanquish S",
  year: 2022,
  fuel: "Petrol",
  owner: owner1
)
Car.create!(
  brand: "Ferrari",
  model: "LaFerrari Aperta",
  year: 2017,
  fuel: "Hybrid",
  owner: owner2
)
Car.create!(
  brand: "Tesla",
  model: "Model S",
  year: 2022,
  fuel: "Electric",
  owner: owner3
)
Car.create!(
  brand: "Porsche",
  model: "911 G",
  year: 1974,
  fuel: "Petrol",
  owner: owner4
)
Car.create!(
  brand: "Bugatti",
  model: "Tourbillon",
  year: 2024,
  fuel: "Petrol",
  owner: owner5
)
Car.create!(
  brand: "Maserati",
  model: "Ghibli",
  year: 2015,
  fuel: "Diesel",
  owner: owner6
)
Car.create!(
  brand: "Land Rover",
  model: "Range Rover Sport",
  year: 2021,
  fuel: "Hybrid",
  owner: owner7
)
Car.create!(
  brand: "Honda",
  model: "Civic type S",
  year: 2011,
  fuel: "Petrol",
  owner: owner8
)
Car.create!(
  brand: "Toyota",
  model: "Yaris",
  year: 2020,
  fuel: "Hybrid",
  owner: owner9
)
Car.create!(
  brand: "Volkwagen",
  model: "Golf TDI",
  year: 2017,
  fuel: "Diesel",
  owner: owner10
)
Car.create!(
  brand: "Ford",
  model: "Focus",
  year: 2022,
  fuel: "Petrol",
  owner: owner11
)
Car.create!(
  brand: "Nissan",
  model: "Qashqai E",
  year: 2010,
  fuel: "Electric",
  owner: owner12
)

  puts "Finished creating #{Owner.count} owners and #{Car.count} cars!"
