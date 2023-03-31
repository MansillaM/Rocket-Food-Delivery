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
Employee.create!(user_id: user.id, phone: "5141231234", email: "francis.patry-jessop@codeboxx.biz")
User.create!(email: "john@doe.com", name: "John Doe", password: "password")

