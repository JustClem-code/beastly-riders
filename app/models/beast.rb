class Beast < ApplicationRecord
  has_many :users, through: :bookings, dependent: :destroy
  has_many_attached :photos

  CATEGORY = ["Aquatique", "Volante", "Terrestre", "Sous-terraine"].sample

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :owner_id, presence: true
  validates :category, presence: true
end
