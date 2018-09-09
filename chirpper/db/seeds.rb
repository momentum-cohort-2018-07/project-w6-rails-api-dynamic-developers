require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

150.times do 
  User.create(
    username: Faker::Internet.username(5..16),
    password: Faker::Internet.password(8, 30)
  )
end

400.times do
  Post.create(
    body: Faker::FamousLastWords.last_words,
    user_id: 1 + rand(100)
  )
end

200.times do
  Comment.create(
    body: Faker::Friends.quote,
    user_id: 1 + rand(100),
    post_id: 1 + rand(100)
  )
end