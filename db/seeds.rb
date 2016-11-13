# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Concert.create(artist: 'Luke', venue: "Razzmatazz", city: "Barcelona", date: Date.new(2016, 8, 17), description: "an awesome party", price: 15)
Concert.create(artist: 'Julio', venue: "Opium", city: "Paris", date: Date.new(2014, 5, 17), description: "dance", price: 20)
Concert.create(artist: 'Enrique', venue: "Boulevard", city: "London", date: Date.new(2013, 3, 17), description: "sing", price: 10)
Concert.create(artist: 'Bright', venue: "Ovella", city: "Berlin", date: Date.new(2011, 2, 17), description: "drink", price: 11)
