# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding users..."

3.times do
    User.create(username: Faker::Internet.username,
    email: Faker::Internet.email, 
    password_digest: Faker::Internet.password,
    firstName: Faker::Name.first_name,
    lastName: Faker::Name.last_name,
    startingWeight: Faker::Number.between(from: 100, to: 200),
    goalWeight: Faker::Number.between(from: 100, to: 150),
    currentWeight: Faker::Number.between(from:100, to: 150)
    )
end


puts "Seeding food..."

15.times do
    Food.create(
         name: Faker::Food.ingredient, 
         description: Faker::Food.description
    )
end

# got rid of User.all.id.sample temporarily since I go an id error since it was not finding user in Food model