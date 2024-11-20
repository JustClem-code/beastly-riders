# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "===========Suppresion des bookings========="
Booking.delete_all
puts "===========Suppresion des beasts========="
Beast.delete_all

puts "===========Suppresion des users========="
User.delete_all

puts "===========Créations des users========="
User.create!(email: "user_lambda@gmail.com", password: "lambda")
user1 = User.create!(email: "coucou@coucou.coucou", password: "123456")
user2 = User.create!(email: "az@az.az", password: "123456")
user3 = User.create!(email: "po@po.po", password: "123456")

puts "===========Création des beasts==========="
# 8.times do
#   price = "#{(150..1999).to_a.sample}€"
#   category = ["💧 Aquatique 💧", "🪽 Volante 🪽", "🦄 Terrestre 🦄", "🕳️ Sous-terraine 🕳️"].sample
#   speed = "#{(10..250).to_a.sample} km/h"
#   image = Faker::LoremFlickr.image

#   user = [user1, user2, user3].sample
#   Beast.create!(name: Faker::Name.name_with_middle, description: Faker::TvShows::GameOfThrones.quote, price_per_day: price, image: image, category: category, speed: speed, owner: user)
# end
Beast.create!(
  name: "Huguette la Licorne",
  description: "elle est tres douce",
  image: "https://monde-licorne.com/cdn/shop/articles/legende_licorne_1457a230-106b-4322-affd-ff6012aaef35.png?v=1561526031",
  category: "🦄 Terrestre 🦄",
  price_per_day: "599 €",
  speed: "120 km/h",
  owner: user1
)

Beast.create!(
  name: "Cthullu Seigneur des ténébres",
  description: "Trés amicale avec les autres animaux",
  image: "https://www.nccri.ie/fantastique/pic/cthulhu01.jpg",
  category: "🪽 Volante 🪽",
  price_per_day: "1200 €",
  speed: "1250 km/h",
  owner: user2
)

Beast.create!(
  name: "Basilic, serpent d'un autre monde",
  description: "Attention aux calins !!!!!",
  image: "https://cdn.shopify.com/s/files/1/0120/6992/9022/files/Serpent_Basilic_grande.jpeg?v=1575638794",
  category: "🕳️ Sous-terraine 🕳️",
  price_per_day: "250 €",
  speed: "35 km/h",
  owner: user3
)

Beast.create!(
  name: "Krakenounet, l'adorable calamar de compagnie",
  description: "Trés mignon traverse les ocean comme personne",
  image: "https://cdn.shopify.com/s/files/1/0527/4291/4198/files/Kraken_le_monstre_Marin_4.jpg?v=1726686416",
  category: "💧 Aquatique 💧",
  price_per_day: "5999 €",
  speed: "667 km/h",
  owner: user1
)


puts "===========#{Beast.count} beasts crées ==========="

puts "===========Création Fini================="
