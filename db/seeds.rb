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
Car.destroy_all
Owner.destroy_all

owner1 = Owner.create!(nickname: "Romeo")
owner2 = Owner.create!(nickname: "Giada")
owner3 = Owner.create!(nickname: "Shan")
owner4 = Owner.create!(nickname: "Lloyd")

puts "creating cars.."

Car.create!(
  brand: "Aston Martin",
  model: "Vanquish S",
  year: 2022,
  fuel: "petrol",
  owner: owner1
)
Car.create!(
  brand: "Ferrari",
  model: "LaFerrari Aperta",
  year: 2017,
  fuel: "hybrid",
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

  puts "Finished creating #{Owner.count} owners and #{Car.count} cars!"
