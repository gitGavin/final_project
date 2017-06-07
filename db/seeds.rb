# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.new
u1.email = "a@a.com"
u1.password = "12345678"
u1.password_confirmation = "12345678"
u1.first_name = "Gavin"
u1.last_name = "Jin"
u1.save

u1 = User.new
u1.email = "a@a.com"
u1.password = "12345678"
u1.password_confirmation = "12345678"
u1.first_name = "Gavin"
u1.last_name = "Jin"
u1.save

puts "#{User.count} users in the database"

Listing.destroy_all

l1 = Listing.new
l1.user_id = u1.id
l1.book_name = "book1"
l1.version = 1
l1.required = false
l1.save

puts "#{Listing.count} listings in the database"
