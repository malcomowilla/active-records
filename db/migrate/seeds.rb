puts "🌱 Seeding data..."

# create between 1 and 5 reviews for each game

rand(1..5).times do
    Review.create(
        star_rating: rand(1..10),
        comment:  Faker::Lorem.sentence,
        product_id: product.id,
        user_id: user.id 

    )

end





puts "🌱 Done seeding!"


