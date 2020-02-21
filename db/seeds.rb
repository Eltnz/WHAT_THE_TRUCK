
Booking.destroy_all
p "bookings destroyed"
FoodTruck.destroy_all
p "foodtrucks destroyed"
User.destroy_all
p "users destroyed"

user_1 = User.create(email: 'brad.pitt.hollywood@gmail.com', first_name: 'Brad', last_name: 'Pitt', phone_number:'0635767687', password:'nespresso')
user_2 = User.create(email: 'eliot.nemoz@gmail.com', first_name:'Eliot', last_name: 'Nemoz', phone_number:'0635456789', password:'nespresso')
user_3 = User.create(email: 'george.clooney@gmail.com', first_name: 'George', last_name: 'Clooney', phone_number:'0612345698', password:'nespresso')
user_4 = User.create(email: 'sovana.srinn@gmail.com', first_name: 'Sovana', last_name: 'Romano', phone_number:'0612345698', password:'nespresso')
user_5 = User.create(email: 'michel.obama@gmail.com', first_name: 'Michel', last_name: 'Obama', phone_number:'0667890432', password:'nespresso')


food_truck_1 = FoodTruck.create(name: 'Chairman Bao', category: 'Asian Food', menu: 'Bo-Bun, Nems, Bao Buns' , availability: true, city: 'PARIS', price_per_day: 1114.50, user: user_1, address: "7 rue de la planche, 75007 Paris")
food_truck_2 = FoodTruck.create(name: 'Great Bowls on Tires', category: 'American Food', menu: 'Burgers, Hot-dogs, French fries' , availability: true, city: 'PARIS', price_per_day: 714.50, user: user_1,address: "36 boulevard des Batignolles, 75017 Paris")
food_truck_3 = FoodTruck.create(name: 'Holy Smoked', category: 'Vegetarian', menu: 'Veggie burgers, seasonal salads, fruit salads' , availability: true, city: 'PARIS', price_per_day: 914.50, user: user_2,address: "5 rue Marcadet, 75018 Paris")
food_truck_4 = FoodTruck.create(name: 'Pig-N-Out', category: 'American Food', menu: 'BBQ ribs, French fries, salads' , availability: true, city: 'PARIS', price_per_day: 789.50, user: user_2, address: "54 Rue Corvisart, 75013 Paris")
food_truck_5 = FoodTruck.create(name: 'Mexellent', category: 'Mexican Food', menu: 'Tacos, Kolaches, Burritos, Guacamole' , availability: true, city: 'PARIS', price_per_day: 536.50, user: user_2, address: "28 avenue Victor Hugo, 75008 Paris")
food_truck_6 = FoodTruck.create(name: 'Be more Pacific', category: 'British Food', menu: 'Fish and Chips' , availability: true, city: 'PARIS', price_per_day: 696.90, user: user_1, address: "33 Avenue du Maine, 75015 Paris")
food_truck_8 = FoodTruck.create(name: 'Great Bowls on Tire', category: 'Asian Food', menu: 'Pho soup, Bao buns, spring rolls' , availability: true, city: 'PARIS', price_per_day: 876.90, user: user_4, address: '3 Rue Jouye-Rouve, 75020 Paris')
food_truck_9 = FoodTruck.create(name: 'Error 500', category: 'Bakery', menu: 'Pain au chocolat, Croissant au beurre, Chouquettes, Pain aux raisins' , availability: true, city: 'PARIS', price_per_day: 3999.90, user: user_3, address:'32 rue Jean-Pierre Timbaud, 75011 Paris')
test_booking = Booking.create(food_truck: food_truck_9, user: user_4, total_price: 3999, start_date: '2020-03-21' ,end_date: '2020-03-22')
test_booking_2 = Booking.create(food_truck: food_truck_6, user: user_2, total_price: 2890, start_date: '2020-04-15' ,end_date: '2020-04-16')





