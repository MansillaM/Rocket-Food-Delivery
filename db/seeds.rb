# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create!(email: "fjessop@gmail.com", name: "Francis Patry-Jessop", password: "password")
address = Address.create!(street_address: "123 CodeBoxx Boulevard", city: "Montreal", postal_code: "H4G52Z")
Address.create!(street_address: "6312 Learning Street", city: "New York", postal_code: "10008")
Employee.create!(user_id: user.id, address_id: address.id, phone: "5141231234", email: "francis.patry-jessop@codeboxx.biz")
User.create!(email: "john@doe.com", name: "John Doe", password: "password")

# require 'faker'

# 15.times do
#     user = User.create!(
#         name: Faker::FunnyName.two_word_name,
#         email: Faker::Internet.email,
#         password: 'password'
#     )
#     address = Address.create!(
#         street_address: Faker::Address.street_address,
#         city: Faker::Address.city,
#         postal_code: Faker::Address.postcode,
#     )
#     employee = Employee.create!(
#         user_id: user.id,
#         phone: Faker::PhoneNumber.cell_phone,
#         email: user.email
#     )
#     customer = Customer.create!(
#         user_id: user.id,
#         address_id: address.id,
#         phone: Faker::PhoneNumber.cell_phone,
#         email: user.email,
#     )
#     rand(1..3).times do
#         restaurant = Restaurant.create!(
#             user_id: user.id,
#             address_id: address.id,
#             phone: Faker::PhoneNumber.cell_phone,
#             email: Faker::Internet.email,
#             name: Faker::Restaurant.name,
#             price_range: Faker::Number.between(from: 10, to: 30),
#         )  
#         rand(1..3).times do
#             product = Product.create!(
#                 restaurant_id: restaurant.id,
#                 name: Faker::Food.dish,
#                 description: Faker::Food.description,
#                 cost: Faker::Number.between(from: 10, to: 30)
#             )
#             rand(1..3).times do
#                 order_status = OrderStatus.create!(
#                     name: Faker::Lorem.sentence,
#                 )
#                 order = Order.create!(
#                     restaurant_id: restaurant.id,
#                     customer_id: customer.id,
#                     status_id: order_status.id,
#                     restaurant_rating: Faker::Number.between(from: 1, to: 10)
#                 )
#                 rand(1..3).times do
#                     ProductOrder.create!(
#                         product_id: product.id,
#                         order_id: order.id,
#                         product_quantity: Faker::Number.between(from: 1, to: 3),
#                         product_unit_cost: Faker::Number.between(from: 5, to: 15)
#                     )
#                 end
#             end        
#         end
#     end
# end
#     puts "*************** User table populated with #{User.count} records ****************"
#     puts "*************** Address table populated with #{Address.count} records ****************"
#     puts "*************** Employee table populated with #{Employee.count} records ****************"
#     puts "*************** Customer table populated with #{Customer.count} records ****************"
#     puts "*************** Restaurant table populated with #{Restaurant.count} records ****************"  
#     puts "*************** Product table populated with #{Product.count} records ****************" 
#     puts "*************** Order table populated with #{Order.count} records ****************"  
#     puts "*************** Order_Status table populated with #{OrderStatus.count} records ****************"  
#     puts "*************** Product_Order table populated with #{ProductOrder.count} records ****************"  