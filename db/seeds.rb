# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
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
#   category = [" Aquatique ", " Volante ", " Terrestre ", " Sous-terraine "].sample
#   speed = "#{(10..250).to_a.sample} km/h"
#   image = Faker::LoremFlickr.image

#   user = [user1, user2, user3].sample
#   Beast.create!(name: Faker::Name.name_with_middle, description: Faker::TvShows::GameOfThrones.quote, price_per_day: price, image: image, category: category, speed: speed, owner: user)
# end
beast1 = Beast.create!(
  name: "Huguette la Licorne",
  description: "Elle est magnifique et très douce, mais ne vous y fiez pas, elle pourra vous amener à bon port sans encombre. Si vous avez besoin d'amadaouer qui que ce soit sur votre trajet, c'est Huguette la Licorne qu'il vous faut ! Présence de paillettes dans vos cheveux encore longtemps après le voyage ... ",
  category: " Terrestre ",
  price_per_day: 599,
  speed: 120,
  owner: user1
)

file = URI.parse("https://monde-licorne.com/cdn/shop/articles/legende_licorne_1457a230-106b-4322-affd-ff6012aaef35.png?v=1561526031").open
beast1.photos.attach(io: file, filename: "huguette.png", content_type: "image/png")
beast1.save

beast2 = Beast.create!(
  name: "Cthullu, seigneur des Ténèbres",
  description: "Malgré les apparences, Cthullu est trés amical avec les autres animaux. Ainsi, si vous souhaitez vous déplacer avec vos compagnons à poils ou à plumes, Cthullu est la bonne monture ! Et bien sûr, à une vitesse supersonique !!!",
  category: " Volante ",
  price_per_day: 1200,
  speed: 1250,
  owner: user2
)

file = URI.parse("https://www.nccri.ie/fantastique/pic/cthulhu01.jpg").open
beast2.photos.attach(io: file, filename: "cthullu.png", content_type: "image/png")
beast2.save

beast3 = Beast.create!(
  name: "Basilic, serpent d'un autre monde",
  description: "Basilic est sans doute le serpent le plus câlin qu'il soit ! Si vous souhaitez voyager en douceur, prendre votre temps et apprécier le paysage, c'est Basilic qu'il vous faut, mais attention aux câlins !!!",
  category: " Sous-terraine ",
  price_per_day: 250,
  speed: 35,
  owner: user3
)

file = URI.parse("https://cdn.shopify.com/s/files/1/0120/6992/9022/files/Serpent_Basilic_grande.jpeg?v=1575638794").open
beast3.photos.attach(io: file, filename: "basilic.png", content_type: "image/png")
beast3.save

beast4 = Beast.create!(
  name: "Krakenounet, l'adorable calamar de compagnie",
  description: "Krakenounet est non seulement trés mignon mais il traverse aussi les océans comme personne ! Avec sa vitesse importante, vous voguerez sur et dans les océans pour arriver à bon port en un rien de temps ! En revanche, combi intégrale nécesssaire !!!",
  category: " Aquatique ",
  price_per_day: 5999,
  speed: 667,
  owner: user1
)

file = URI.parse("https://cdn.shopify.com/s/files/1/0527/4291/4198/files/Kraken_le_monstre_Marin_4.jpg?v=1726686416").open
beast4.photos.attach(io: file, filename: "kraken.png", content_type: "image/png")
beast4.save

beast5 = Beast.create!(
  name: "Manti, la Manticore",
  description: "La manticore bien que très dangereuse et adorable et très docile quand elle est domestiquée. Vous pouvez y aller les yeux fermés. ",
  category: " Volante ",
  price_per_day: 459,
  speed: 255,
  owner: user2
)

file = URI.parse("https://cdn.shopify.com/s/files/1/0269/0868/8432/files/Manticore_Une_Creature_Legendaire_Surpuissante_2.jpg?v=1726513640").open
beast5.photos.attach(io: file, filename: "manticore.png", content_type: "image/png")
beast5.save

beast6 = Beast.create!(
  name: "ChaOlib, le bus chat tout service",
  description: "ChaOlib vous accompagne dans tous vos déplacements dans la région de Nantes et plus encore ! Convient aux enfants !",
  category: " Terrestre ",
  price_per_day: 600,
  speed: 110,
  owner: user3
)

file = URI.parse("https://ghiblishop.fr/wp-content/uploads/2021/10/unnamed-1.jpeg").open
beast6.photos.attach(io: file, filename: "manticore.png", content_type: "image/png")
beast6.save

puts "===========#{Beast.count} beasts crées ==========="

puts "===========Création Fini================="
