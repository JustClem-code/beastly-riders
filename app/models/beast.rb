class Beast < ApplicationRecord
  has_many :users, through: :bookings, dependent: :destroy

  CATEGORY = ["💧 Aquatique 💧", "🪽 Volante 🪽", "🦄 Terrestre 🦄", "🕳️ Sous-terraine 🕳️"]

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :owner_id, presence: true
  validates :category, presence: true
end
