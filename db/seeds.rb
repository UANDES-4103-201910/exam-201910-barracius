# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Product.create(brand: 'Hasbro', type_s: 'doll' , model: "barbie", variant: 'green', price: 2000, short_description: 'barbie bacan', long_description: 'mas bacan, de lo que crees')
p2 = Product.create(brand: 'Pixar', type_s: 'lampara', model: 'lamparita', variant: nil, price: 1000000, short_description: 'lamparita', long_description: 'lampara de pixar')

u1 = User.create(first_name: 'Elton', last_name: 'John', email: 'elton@gmail.com')
u2 = User.create(first_name: 'Rai', last_name: 'Gonza', email: 'rai@gmail.com')

a1 = Address.create(user: u2, phone: 123456789, address_line_1: 'san carlos de apoquindo', address_line_2: '1130', city: 'santiago', country: 'Chile', zip_code: 75550000)

o1 = Order.create(user_id: u2, billing_address_id: a1, shipping_address_id: a1)