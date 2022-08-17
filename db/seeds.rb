# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

puts 'Generating five restaurants'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORY.sample
  )
  restaurant.save!

  3.times do
    review = Review.new(
      restaurant:,
      rating: rand(0..5),
      content: Faker::Restaurant.review
    )
    review.save!
  end
end

puts 'Finished!'
