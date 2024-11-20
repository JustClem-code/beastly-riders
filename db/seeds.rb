# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts "===========Suppresion des bookings========="
# Booking.delete_all
puts "===========Suppresion des beasts========="
Beast.delete_all
puts "===========Suppresion des users========="
User.delete_all
puts "===========Créations des users========="
# User.create!(email: "user_lambda@gmail.com", password: "lambda")
user1 = User.create!(email: "coucou@coucou.coucou", password: "123456")
user2 = User.create!(email: "az@az.az", password: "123456")
user3 = User.create!(email: "po@po.po", password: "123456")
puts "===========Création des beasts==========="

30.times do
  price = "#{(150..1999).to_a.sample}€"
  category = ["💧 Aquatique 💧", "🪽 Volante 🪽", "🦄 Terrestre 🦄", "🕳️ Sous-terraine 🕳️"].sample
  speed = "#{(10..250).to_a.sample} km/h"
  image = Faker::LoremFlickr.image

  user = [user1, user2, user3].sample
  Beast.create!(name: Faker::Name.name_with_middle, description: Faker::TvShows::GameOfThrones.quote, price_per_day: price, image: image, category: category, speed: speed, owner: user)
end

puts "===========#{Beast.count} beasts crées ==========="
puts "===========Création Fini================="
