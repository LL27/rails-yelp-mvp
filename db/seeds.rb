# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
patchanka = { name: "Patchanka", address: " 33-35 Rue Saint-Sébastien, 75011 Paris", category: "French", rating: 5 }
comptoir = { name: "Le Comptoir de la Gastronomie", address: "34 rue Montmartre", category: "French", rating: 5 }
philo = { name: "Les Philosophes", address: "28 rue Vieille du Temple, 75004 Paris", category: "Belgian", rating: 4 }
sanukiya = { name: "Sanukiya", address: "9 rue d'Argenteuil, 75001 Paris", category: "japanese", rating: 4 }
coincidence = { name: "La Coincidence", address: "18 rue Mesnil, 75116 Paris", category: "Italian", rating: 3 }


[ patchanka, comptoir, philo, sanukiya, coincidence ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
