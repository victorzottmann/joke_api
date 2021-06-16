# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joke_categories = ["Puns", "Programming", "Knock Knock", "Limericks"]

if Category.all.length == 0
  joke_categories.each do |category|
    Category.create(name: category)
    puts "created #{category} category"
  end
end

if User.count == 0
  User.create(
    username: "Victor", 
    email: "victor@test.com", 
    password: "password1", 
    password_confirmation: "password1"
  )
  User.create(
    username: "Victor2", 
    email: "victor2@test.com", 
    password: "password2", 
    password_confirmation: "password2"
  )
end

if Joke.all.length == 0
  Joke.create(user_id: 1, category_id: 1, body: "A random pun joke")
  Joke.create(user_id: 1, category_id: 1, body: "Another random pun joke")
  Joke.create(user_id: 1, category_id: 1, body: "Yet another random pun joke")
  Joke.create(user_id: 2, category_id: 2, body: "I ran out of ideas for programming joke")
  Joke.create(user_id: 2, category_id: 2, body: "This is a very random programming joke")
  Joke.create(user_id: 2, category_id: 2, body: "Hello there, this is a random programming joke")
end
