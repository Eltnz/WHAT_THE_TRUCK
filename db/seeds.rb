# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

FoodTruck.destroy_all
User.destroy_all


user_1 = User.new(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0610', password:'nespresso')
user_1.save!
user_2 = User.new(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0611', password:'nespresso')
user_2.save!
user_3 = User.create(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0612', password:'nespresso')
user_test = User.create(email: "test@mail.com", password:'azerty',first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0613')

food_truck_1 = FoodTruck.create(name: 'Chairman Bao', category: 'Asian delices', menu: 'Bo-Bun, nems, raviolis' , availability: true, city: 'San Francisco', price_per_day: 1114.5, user: user_1)
food_truck_2 = FoodTruck.create(name: 'Great Bowls on Tires', category: 'American delices', menu: 'Burgers, hot-dogs, raviolis' , availability: true, city: 'L.A', price_per_day: 714.5, user: user_1)
food_truck_3 = FoodTruck.create(name: 'Holy Smoked', category: 'fish&chips', menu: 'fishs, chips' , availability: true, city: 'Paris', price_per_day: 914.5, user: user_2)
food_truck_4 = FoodTruck.create(name: 'Pig-N-Out BBQ', category: 'American style', menu: 'BBQ best meats' , availability: true, city: 'Paris', price_per_day: 136.5, user: user_2)
food_truck_5 = FoodTruck.create(name: 'Mexellent', category: 'Mexican style', menu: 'Mexcian best meats' , availability: true, city: 'Paris', price_per_day: 536.5, user: user_2)




food_truck_1.user = user_1
food_truck_2.user = user_1
food_truck_3.user = user_2
food_truck_4.user = user_2
food_truck_5.user = user_2


