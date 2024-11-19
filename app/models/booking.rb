class Booking < ApplicationRecord
  belongs_to :beast
  belongs_to :user
  validates :user_id, presence: true
  validates :beast_id, presence: true
  validates :date_start, presence: true
  validates :date_end, presence: true
end
