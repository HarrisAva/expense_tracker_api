# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
(1..10).each do |i|
    user = User.create(
        username: Faker::Internet.username(specifier: 3..20, separators: %w(_)),
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: 'password',
        password_confirmation: 'password'
    )

    rand(1..10).times do
        user.expenses.create(
            date: Faker::Date.forward(days:15),
            title: Faker::Lorem.word,
            description: Faker::Lorem.sentence,
            amount: rand(20..500),
            category_id: rand(1..10),
        
        )
    end
end
