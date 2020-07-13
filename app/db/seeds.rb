# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Seed started...'

p 'Cleaning database...'
AdminUser.destroy_all
Offer.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
p 'Database cleaned!'

p 'Create AdminUser...'
30.times do |i|
  AdminUser.create!(
    email: "admin#{i}@example.com", 
    password: 'password', 
    password_confirmation: 'password')
end
p '30 AdminUser created!'

p 'Create Offers...'
1000.times do |i|
  Offer.create!(
    name: Faker::Lorem.sentence, 
    description: Faker::Lorem.paragraph(sentence_count: 30), 
    price: rand(1..99999),
    postal_code: rand(10000..99999),
    email: Faker::Internet.email,
    phone_number: rand(1000000000..9999999999),
    validate?: [true, false].sample)
end
p '1000 Offers created!'