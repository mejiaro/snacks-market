# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Product.create!(name: 'Nerds',
               	  price: '0.15' ,
               	  stock: 81)


Product.create!(name: 'KitKat',
               	  price: '0.90' ,
               	  stock: 5)

Product.create!(name: 'Airheads',
               	  price: '0.20' ,
               	  stock: 47)



30.times do |n|
  name = Faker::Commerce.product_name
  price = Faker::Number.decimal(0, 2)
  stock = Faker::Number.between(1, 54)
  Product.create!(name: name,
               	  price: price,
               	  stock: stock)
              
end

10.times do
  name = Faker::TvShows::RickAndMorty.unique.character
  User.create!(name: name,
               email: name.delete(' ').downcase+'@snacks.io',
               password: 'ilovesnacks',
               is_admin: [true, false].sample)
end

User.create!(name: 'Admin',
             email: 'admin@snacks.io',
             password: '123456',
             is_admin: true)


users = User.all.sample(8)

users.each do |user|
  products = Product.all.sample(12)

  products.each do |product|
    Like.create!(product_id: product.id, user_id: user.id)
  end
  
end




