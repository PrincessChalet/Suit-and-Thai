# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Menu.destroy_all

Menu.create([{
	item_name: 'Veggie Spring rolls',
	item_description: 'Fried Rice Paper Rolls | Glass Noodles | Mixed Vegetable | Sweet & Sour Sauce. (4 pieces)',
	item_price: '14.99',
	item_picture: '/public/Vegetable-Spring-Rolls.jpg',
},
{
	item_name: 'Corn Patties',
	item_description: 'Crispy Corn | Sweet & Sour Sauce. (4 pieces)',
	item_price: '14.99',
	item_picture: '/public/corn patties.jpg',
},
{
	item_name: 'Gyoza',
	item_description: 'Fried Pork & Vegetable Pot Stickers | Soy Sauce (6 pieces)',
	item_price: '15.99',
	item_picture: '/public/Gyoza.jpg',
},
{
	item_name: 'Pad Thai',
	item_description: 'Flat Rice Noodles | Broccoli | Egg | Carrots | Black Soy Sauce',
	item_price: '19.99',
	item_picture: '/public/pad thai.jpg',
},
{
	item_name: 'Pad See Eew',
	item_description: 'Rice noodles | Egg | Bean Sprouts | Tamarind Sauce | Green Onion | Peanuts',
	item_price: '19.99',
	item_picture: '/public/Pad See Eew.jpg',
},
{
	item_name: 'Yellow Curry',
	item_description: 'Carrot | Potato | Yellow Onion | Coconut Milk | Yellow Curry Paste',
	item_price: '19.99',
	item_picture: '/public/yello curry.jpg',
},
{
	item_name: 'Beef and Broccoli',
	item_description: 'White or brown steamed rice',
	item_price: '15.99',
	item_picture: '/public/Beef and Broccoli.jpg',
},
{
	item_name: 'Orange Chicken',
	item_description: 'White or brown steamed rice',
	item_price: '15.99',
	item_picture: '/public/Orange Chicken.jpg',
},
{
	item_name: 'Fried Rice',
	item_description: 'Scrambled eggs | Carrots | Peas',
	item_price: '15.99',
	item_picture: '/public/Fried Rice.jpg',
},
{
	item_name: 'Mango sticky rice',
	item_description: 'Mango | Sweet Sticky Rice | Coconut Milk',
	item_price: '15.99',
	item_picture: '/public/Mango sticky rice.jpg',
},
{
	item_name: 'Custard Sticky Rice',
	item_description: 'Egg custard | Sweet Sticky Rice | Coconut Milk',
	item_price: '14.99',
	item_picture: '/public/Custard sticky rice.jpg',
},
{
	item_name: 'Green Tea Ice Cream',
	item_description:'Matcha | Coconut Shavings',
	item_price:'14.50',
	item_picture:'/public/Green tea ice cream.jpg',
},
{
	item_name: 'Hot Tea',
	item_description:'Jasmine | Ginger | Green',
	item_price: '12.99',
	item_picture: '/public/hot green tea.jpg',
},
{
	item_name: 'Iced Tea',
	item_description: 'Thai | Sweet | Unsweet',
	item_price: '12.99',
	item_picture:'/public/Thai Iced Tea.jpg',
},
{
	item_name: 'Soft Drinks',
	item_description: 'Coke, Diet Coke, Sprite and Dr.Pepper (Refills available for dine-in)',
	item_price: '11.99',
	item_picture: '/public/Soft Drinks.jpg',
}])

p 'Created #{Menu.count} menus'