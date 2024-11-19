class Beast < ApplicationRecord
  has_many :users, through: :bookings
  CATEGORY = ["Aquatique", "Volante", "Terrestre", "Sous-terraine"].sample
end
