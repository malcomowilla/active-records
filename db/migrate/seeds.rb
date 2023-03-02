puts "Creating users..."
User.create(name:"Stewie")
User.create(name:"Lowis")
User.create(name:"Peter Griffin")
User.create(name:"Samurai Jack")
User.create(name:"Mr patrick")
User.create(name:"Spongebob")
User.create(name:"Rick")
User.create(name:"Morty")

puts "Creating products..."
Product.create(name:"Google", price:2000000222)
Product.create(name:"Facebook", price:1255262)
Product.create(name:"Dunder Miffin", price:2627167)
Product.create(name:"Enron", price:26272222267)
Product.create(name:"Twitter", price:26276226)
Product.create(name:"Instagram", price:226822862)
Product.create(name:"Safaricom", price:26726726)
Product.create(name:"Tiktok", price:26727262277262)



puts " Seeding data..."

# create between 1 and 5 reviews for each game

rand(1..5).times do
    Review.create(
        star_rating: rand(1..10),
        comment:  Faker::Lorem.sentence,
        product_id: product.id,
        user_id: user.id 

    )

end





puts " Done seeding!"


