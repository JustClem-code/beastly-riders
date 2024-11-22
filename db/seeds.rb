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

beast7 = Beast.create!(
  name: "Pegase Ailé",
  description: "Une majestueuse créature céleste dotée de grandes ailes blanches scintillantes, capable de voler à travers les cieux avec une grâce inégalée. Pégase, descendant des dieux, est une monture parfaite pour ceux qui cherchent vitesse, élégance et une vue aérienne à couper le souffle. Pourquoi la louer ?: 'Survolez les paysages, traversez les tempêtes et dominez les cieux avec une monture divine ! Pégase ne fait qu’un avec le vent.'",
  category: " Volante ",
  price_per_day: 1800,
  speed: 456,
  owner: user1
)

file = URI.parse("https://fac.img.pmdstatic.net/fit/~1~fac~2022~11~08~0ff187aa-043d-4076-9df5-7e1ad0e18a3f.jpeg/422x237/quality/80/crop-from/center/tout-savoir-sur-pegase-le-cheval-aile-de-la-mythologie-grecque.jpeg").open
beast7.photos.attach(io: file, filename: "pegase.png", content_type: "image/png")
beast7.save

beast8 = Beast.create!(
  name: "Qilin",
  description: "Une créature élégante mi-dragon, mi-cerf, avec des écailles dorées et des sabots délicats. Connue pour apporter paix et prospérité, le Qilin voyage sans jamais laisser de trace, offrant un trajet silencieux et respectueux de la nature. Pourquoi la louer ?: 'Élevez-vous avec la noblesse d’un gardien mystique et profitez d’un voyage aussi doux qu’un nuage. Le Qilin est le choix des sages !'",
  category: " Volante ",
  price_per_day: 8595,
  speed: 999,
  owner: user2
)

file = URI.parse("https://cdn.shopify.com/s/files/1/0269/0868/8432/files/Qilin_L_Ame_Pure_4.jpg?v=1726514261").open
beast8.photos.attach(io: file, filename: "qilin.png", content_type: "image/png")
beast8.save

beast9 = Beast.create!(
  name: "Kelpie",
  description: "Une créature aquatique métamorphe, souvent vue sous la forme d’un magnifique cheval noir à la crinière humide scintillant comme la mer. Rapide et puissant, il peut galoper à travers les terres et nager dans les océans avec une aisance surnaturelle. Pourquoi la louer ?: 'que vous affrontiez les vagues ou que vous parcouriez des plages sauvages, le Kelpie est votre monture pour l’aventure ultime.'",
  category: " Aquatique ",
  price_per_day: 450,
  speed: 110,
  owner: user3
)

file = URI.parse("https://sirenas.fr/wp-content/uploads/2021/07/kelpie-cheval-ondin.png").open
beast9.photos.attach(io: file, filename: "kelpie.png", content_type: "image/png")
beast9.save

beast10 = Beast.create!(
  name: "Amarok",
  description: "Un gigantesque loup solitaire doté d’un pelage argenté qui brille sous la lune. L’Amarok est à la fois protecteur et féroce, garantissant un trajet sécurisé même dans les régions les plus hostiles et gelées. Pourquoi la louer ?: 'Traversez les toundras avec la force d’un prédateur mythique. L’Amarok vous emmènera là où personne n’a osé s’aventurer.'",
  category: " Terrestre ",
  price_per_day: 120,
  speed: 130,
  owner: user3
)

file = URI.parse("https://oldworldgods.com/wp-content/uploads/2024/04/amarokmythologyinuit3.jpg").open
beast10.photos.attach(io: file, filename: "amarok.png", content_type: "image/png")
beast10.save

beast11 = Beast.create!(
  name: "Griffon",
  description: "Une créature mi-aigle, mi-lion, dotée de griffes acérées et d’ailes imposantes. Symbole de puissance et de majesté, le Griffon est une monture fiable pour les terrains aériens et montagneux.  Pourquoi la louer ?: 'Laissez un roi des airs et des montagnes être votre guide. Le Griffon vous transporte avec audace et prestige !'",
  category: " Volante ",
  price_per_day: 456,
  speed: 99,
  owner: user1
)

file = URI.parse("https://static.wikia.nocookie.net/thesoulstones/images/8/88/441b8dbf9b4fe9d62d70e853e54dd243.png/revision/latest?cb=20180626012038&path-prefix=tr").open
beast11.photos.attach(io: file, filename: "griffon.png", content_type: "image/png")
beast11.save

beast12 = Beast.create!(
  name: "Sleipnir",
  description: "Le légendaire cheval à huit jambes d’Odin, capable de galoper sur terre, sur l’eau, et même entre les royaumes. Sleipnir est la monture idéale pour les aventuriers en quête de destinations mystiques et lointaines. Pourquoi la louer ?: 'Vitesse inégalée, endurance infinie, et un passeport pour les mondes cachés ? Sleipnir est le compagnon ultime pour votre épopée.'",
  category: " Terrestre ",
  price_per_day: 10_596,
  speed: 850,
  owner: user3
)

file = URI.parse("https://i0.wp.com/histoiresfantastiques.com/wp-content/uploads/2022/09/Sleipnir-Alaiaorax.png?fit=1000%2C711&ssl=1").open
beast12.photos.attach(io: file, filename: "sleipnir.png", content_type: "image/png")
beast12.save

puts "===========#{Beast.count} beasts crées ==========="

puts "=============== Création des Bookings ============="

b = Booking.new(
  status: "created",
  date_start: "2024-11-22",
  date_end: "2024-11-24"
)
b.beast = beast1
b.user = user3
b.save!

b = Booking.new(
  status: "payed",
  date_start: "2024-11-22",
  date_end: "2024-11-24"
)
b.beast = beast4
b.user = user2
b.save!

b = Booking.new(
  status: "validated",
  date_start: "2024-11-22",
  date_end: "2024-11-26"
)
b.beast = beast6
b.user = user1
b.save!

puts "=========#{Booking.count} Booking crées !=========="

puts "=========== Création Fini ================="
