# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurent = Restaurant.create(name: 'The Mammoth Boulevard', address: 'ben yehuda 32', category: 'italian', phone_number: '054-2345-334' )
restaurent2 = Restaurant.create(name: 'The Cool Fridge', address: 'alenby 5', category: 'chinese' )
restaurent3 = Restaurant.create(name: 'The Caviar Willow', address: 'haifa', category: 'japanese' )
restaurent4 = Restaurant.create(name: 'The Copper Scarf', address: 'calanit', category: 'belgian' )
restaurent5 = Restaurant.create(name: 'The Vintage Clam', address: 'natania', category: 'french', phone_number: '052-3333-467' )





# ["chinese", "italian", "japanese", "french", "belgian"].
