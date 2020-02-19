require 'faker'

Booking.destroy_all
FoodTruck.destroy_all
User.destroy_all


user_1 = User.create(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0610', password:'nespresso')
user_2 = User.create(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0611', password:'nespresso')
user_3 = User.create(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0612', password:'nespresso')
user_4 = User.create(email: 'a@b.com', first_name: 'Jorge', last_name: 'George', phone_number:'0642', password:'azerty')
user_5 = User.create(email: Faker::Internet.email, first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0612', password:'nespresso')
user_6 = User.create(email: "test@mail.com", password:'azerty',first_name: Faker::FunnyName.name, last_name: Faker::FunnyName.name, phone_number:'0613')
hungry_joe = User.create(email: "person@email.com", password:'azerty',first_name: 'Starve D', last_name: 'Joe', phone_number:'0713')
foody_joe = User.create(email: "truck@email.com", password:'azerty',first_name: "Joe 'the fridge'" , last_name: 'Izcold', phone_number:'0633')

food_truck_1 = FoodTruck.create(name: 'Chairman Bao', category: 'Asian delices', menu: 'Bo-Bun, nems' , availability: true, city: 'Lyon 3', price_per_day: 1114.5, user: user_1)
food_truck_2 = FoodTruck.create(name: 'Great Bowls on Tires', category: 'American delices', menu: 'Burgers, hot-dogs' , availability: true, city: 'Lyon 2', price_per_day: 714.5, user: user_1)
food_truck_3 = FoodTruck.create(name: 'Holy Smoked', category: 'Vegetarian', menu: 'Salads' , availability: true, city: 'Paris 3', price_per_day: 914.5, user: user_2)
food_truck_4 = FoodTruck.create(name: 'Pig-N-Out BBQ', category: 'American style', menu: 'BBQ meats' , availability: true, city: 'Paris 17', price_per_day: 136.5, user: user_2)
food_truck_5 = FoodTruck.create(name: 'Mexellent', category: 'Mexican style', menu: 'Mexican best meals' , availability: true, city: 'Paris 20', price_per_day: 536.5, user: user_2)
food_truck_6 = FoodTruck.create(name: 'Acapulco spices', category: 'Mexican style', menu: 'Mexican ok meals ' , availability: true, city: 'Paris 9', price_per_day: 696.9, user: foody_joe)
food_truck_7 = FoodTruck.create(name: 'Piggy', category: 'style cochonne', menu: 'Saucisson' , availability: true, city: 'Marseille 4', price_per_day: 457, user: foody_joe)
food_truck_8 = FoodTruck.create(name: 'Kenyan safari', category: 'Cuisine corse', menu: 'Ramens' , availability: true, city: 'Lyon 1', price_per_day: 290, user: user_4)
food_truck_9 = FoodTruck.create(name: 'Basic Burger', category: 'American style', menu: 'Burgers' , availability: true, city: 'Marseille 2', price_per_day: 888, user: user_3)


test_booking = Booking.create(food_truck: food_truck_7, user: hungry_joe, total_price: 2890, start_date: '2020-02-21' ,end_date: '2020-02-21')
test_booking_2 = Booking.create(food_truck: food_truck_6, user: hungry_joe, total_price: 2890, start_date: '2020-04-15' ,end_date: '2020-04-17')

