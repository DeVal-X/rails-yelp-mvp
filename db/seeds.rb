require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

5.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: %w[chinese italian japanese french belgian].sample)
  restaurant.save
  2.times do
    review = Review.new(rating: Faker::Number.between(from: 0, to: 5), content: Faker::Restaurant.review, restaurant: restaurant)
    p review
    review.save
  end
end
